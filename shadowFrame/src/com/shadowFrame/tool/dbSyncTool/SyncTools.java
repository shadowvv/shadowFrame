package com.shadowFrame.tool.dbSyncTool;

import com.google.common.base.Strings;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 数据库同步工具
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/22 16:15
 */
public class SyncTools {

    /**
     * 配置表地址
     */
    private static String configPath = System.getProperty("user.dir") + "\\thrud-game-server\\src\\test\\java\\com\\biligame\\access\\dbSync\\dbSyncConfig.properties";
    /**
     * 创建表sql
     */
    private static Map<String, String> syncCreateSql = new HashMap<>();
    /**
     * 修改表sql
     */
    private static Map<String, String> syncAlterSql = new HashMap<>();
    /**
     * 删除表sql
     */
    private static Map<String, String> syncDropSql = new HashMap<>();
    /**
     * 导出目标数据库名
     */
    private static Map<String, List<String>> syncTargetDbName = new HashMap<>();

    private SyncTools() {
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {

        DbSyncConfig config = new DbSyncConfig(configPath);

        //获得源数据库表
        Connection sourceConnection = getConnection(config.getSourceConnect(), config.getSourceUserName(), config.getSourcePassword());
        List<String> sourceTableNames = getAllTableName(sourceConnection);
        if(sourceTableNames.size() == 0){
            System.err.println("源数据为空！");
            return;
        }
        System.out.println("源数据包括表：" + sourceTableNames);

        //比较源数据库和比较数据库的表
        Connection compareConnection = getConnection(config.getCompareConnect(), config.getCompareUserName(), config.getComparePassword());
        for (String table : sourceTableNames) {
            System.out.println("开始比较表：" + table);
            compareTable(table, sourceConnection, compareConnection, config.isDropColumn(), true);
        }

        //删除比较库中无用的表
        List<String> compareTableNames = getAllTableName(compareConnection);
        for (String table : compareTableNames) {
            if (!sourceTableNames.contains(table)) {
                String dropSql = "DROP TABLE " + table + ";";
                System.out.println("查询到需要删除的表：" + table + ",导入删除sql:" + dropSql);
                syncDropSql.put(table, dropSql);
            }
        }
        if(syncCreateSql.size() == 0 && syncAlterSql.size() == 0 && syncDropSql.size() == 0){
            System.out.println("源库与比较库一致！");
            return;
        }

        //导出比较库运行的sql
        exportCompareSyncSql(getDbName(compareConnection), config.isDropTable(), config.getTargetVersionName());
        if (config.isRunUpdateSqlOnCompare()) {
            runCompareSyncSql(compareConnection, config.isDropTable());
            //再次比较源数据库和比较数据库的表
            for (String table : sourceTableNames) {
                System.out.println("再次开始比较表：" + table);
                compareTable(table, sourceConnection, compareConnection, config.isDropColumn(), false);
            }
        }

        //从比较库中查询导出的数据库名
        Connection configConnection = getConnection(config.getConfigConnect(), config.getConfigUserName(), config.getConfigPassword());
        selectExportDbName(configConnection, config.getGameDbConfigTableName());
        if(syncTargetDbName.size() == 0){
            System.err.println("目标数据库为空！");
            return;
        }

        //导出同步sql
        exportTargetSyncSql(config.isDropTable(), config.getTargetVersionName(), config.getTableCount());

        sourceConnection.close();
        compareConnection.close();
        configConnection.close();
    }

    /**
     * 获得数据库链接
     *
     * @param connectUrl 链接URL
     * @param username   用户名
     * @param password   密码
     * @return 数据库链接
     */
    private static Connection getConnection(String connectUrl, String username, String password) {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(connectUrl, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 获得数据库内所有表
     *
     * @param connection 链接
     * @return 数据库内所有表的表名
     */
    private static List<String> getAllTableName(Connection connection) {
        List<String> names = new ArrayList<>();
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet tables = metaData.getTables(connection.getCatalog(), connection.getSchema(), "%", new String[]{"TABLE"});
            while (tables.next()) {
                names.add(tables.getString("TABLE_NAME"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return names;
    }

    /**
     * 判断表是否在数据库存在
     *
     * @param tableName  表名
     * @param connection 数据库链接
     * @return 表是否存在
     */
    private static boolean checkTableExist(String tableName, Connection connection) {
        boolean exist = false;
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet tables = metaData.getTables(connection.getCatalog(), connection.getSchema(), tableName, new String[]{"TABLE"});
            while (tables.next()) {
                exist = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return exist;
    }

    /**
     * 对比库内的表结构信息
     *
     * @param tableName         表名
     * @param sourceConnection  比较源数据库链接
     * @param compareConnection 比较目标数据库链接
     * @param dropColumn        是否删除列
     * @param saveSql           是否存储差异sql
     */
    private static void compareTable(String tableName, Connection sourceConnection, Connection compareConnection, boolean dropColumn, boolean saveSql) {
        String sourceCreateSql = getTableCreateSql(tableName, sourceConnection);
        Map<String, DbSimpleColumnInfo> sourceTableColumns = getTableColumnInfo(tableName, sourceConnection);
        Map<String, DbSimpleIndexInfo> sourceIndexes = getTableIndexInfo(tableName, sourceConnection);
        DbSimpleTableStructure sourceTableStructure = new DbSimpleTableStructure(tableName, sourceTableColumns, sourceIndexes, sourceCreateSql);
        System.out.println("源数据库表结构：" + sourceTableStructure);

        if (checkTableExist(tableName, compareConnection)) {
            String compareCreateSql = getTableCreateSql(tableName, compareConnection);
            Map<String, DbSimpleColumnInfo> compareTableColumns = getTableColumnInfo(tableName, compareConnection);
            Map<String, DbSimpleIndexInfo> compareIndexes = getTableIndexInfo(tableName, compareConnection);
            DbSimpleTableStructure compareTableStructure = new DbSimpleTableStructure(tableName, compareTableColumns, compareIndexes, compareCreateSql);
            System.out.println("比较数据库表结构：" + compareTableStructure);
            String alterSql = compareTable(sourceTableStructure, compareTableStructure, dropColumn);
            if (Strings.isNullOrEmpty(alterSql)) {
                System.out.println("比较库中与源库表结构一致：" + compareTableStructure);
            } else {
                System.out.println("导入修改表sql：" + alterSql);
                if (saveSql) {
                    syncAlterSql.put(tableName, alterSql);
                }
            }
        } else {
            System.out.println("比较库中没有表：" + tableName);
            System.out.println("导入创建表sql：" + sourceTableStructure.getCreateSql());
            if (saveSql) {
                syncCreateSql.put(tableName, sourceTableStructure.getCreateSql());
            }
        }

    }

    /**
     * 获得创建表的sql
     *
     * @param tableName  表名
     * @param connection 数据库链接
     * @return 创建表的sql
     */
    private static String getTableCreateSql(String tableName, Connection connection) {
        String sql = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SHOW CREATE TABLE " + tableName);
            if (resultSet.next()) {
                sql = resultSet.getString("Create Table");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sql;
    }

    /**
     * 获得数据库名
     * @param connection 数据库链接
     * @return 数据库名
     */
    private static String getDbName(Connection connection) {
        String dbName = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT DATABASE()");
            if (resultSet.next()) {
                dbName = resultSet.getString("DATABASE()");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dbName;
    }

    /**
     * 获得表列信息
     *
     * @param tableName  表明
     * @param connection 数据库链接
     * @return 表列信息映射
     */
    private static Map<String, DbSimpleColumnInfo> getTableColumnInfo(String tableName, Connection connection) {
        Map<String, DbSimpleColumnInfo> columns = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SHOW FULL COLUMNS FROM " + tableName);
            columns = parseColumn(resultSet, tableName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return columns;
    }

    /**
     * 分析生成表列信息
     *
     * @param resultSet 数据库查询列信息
     * @param tableName 表名
     * @return 表列信息
     */
    private static Map<String, DbSimpleColumnInfo> parseColumn(ResultSet resultSet, String tableName) {
        Map<String, DbSimpleColumnInfo> columns = new HashMap<>();
        String PreviousColumn = null;
        try {
            while (resultSet.next()) {
                DbSimpleColumnInfo column = new DbSimpleColumnInfo();
                column.setName(resultSet.getString("Field"));
                column.setTableName(tableName);
                column.setPreviousColumn(PreviousColumn);
                column.setType(resultSet.getString("Type"));
                column.setCollation(resultSet.getString("Collation"));
                column.setIsNull(resultSet.getString("Null"));
                column.setKey(resultSet.getString("Key"));
                column.setDefaultValue(resultSet.getString("Default"));
                column.setExtra(resultSet.getString("Extra"));
                column.setPrivileges(resultSet.getString("Privileges"));
                column.setComment(resultSet.getString("Comment"));
                columns.put(column.getName(), column);
                PreviousColumn = column.getName();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return columns;
    }

    /**
     * 获得表索引信息
     *
     * @param tableName  表名
     * @param connection 数据库链接
     * @return 表索引信息
     */
    private static Map<String, DbSimpleIndexInfo> getTableIndexInfo(String tableName, Connection connection) {
        Map<String, DbSimpleIndexInfo> indexes = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SHOW INDEX FROM " + tableName);
            indexes = parseIndex(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return indexes;
    }

    /**
     * 分析生成表索引信息
     *
     * @param resultSet 数据库查询索引信息
     * @return 表索引信息
     */
    private static Map<String, DbSimpleIndexInfo> parseIndex(ResultSet resultSet) {
        Map<String, DbSimpleIndexInfo> indexes = new HashMap<>();
        try {
            while (resultSet.next()) {
                String indexName = resultSet.getString("Key_name");
                if (indexes.containsKey(indexName)) {
                    DbSimpleIndexInfo index = indexes.get(indexName);
                    index.setColumn(buildColumn(index.getColumn(), resultSet.getString("Column_name"), resultSet.getInt("Seq_in_index")));
                } else {
                    DbSimpleIndexInfo index = new DbSimpleIndexInfo();
                    index.setName(resultSet.getString("Key_name"));
                    index.setTableName(resultSet.getString("Table"));
                    index.setIsUnique(resultSet.getString("Non_unique"));
                    index.setCollation(resultSet.getString("Collation"));
                    index.setCardinality(resultSet.getString("Cardinality"));
                    index.setSubPart(resultSet.getString("Sub_part"));
                    index.setPacked(resultSet.getString("Packed"));
                    index.setContainNull(resultSet.getString("Null"));
                    index.setIndexType(resultSet.getString("Index_type"));
                    index.setComment(resultSet.getString("Comment"));
                    index.setIndexComment(resultSet.getString("Index_comment"));
                    index.setColumn(buildColumn("", resultSet.getString("Column_name"), resultSet.getInt("Seq_in_index")));
                    indexes.put(index.getName(), index);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return indexes;
    }

    /**
     * 组装索引对应的列
     *
     * @param base       基础列
     * @param columnName 要加入的列
     * @param index      加入列的位置
     * @return 索引对应的列
     */
    private static String buildColumn(String base, String columnName, int index) {
        List<String> baseColumn = new ArrayList<>();
        String[] temp = base.split(",");
        for (String column : temp) {
            if (!Strings.isNullOrEmpty(column)) {
                baseColumn.add(column);
            }
        }
        baseColumn.add(index - 1, columnName);
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < baseColumn.size(); i++) {
            builder.append("'");
            builder.append(baseColumn.get(i));
            builder.append("'");
            if (i < baseColumn.size() - 1) {
                builder.append(",");
            }
        }
        return builder.toString();
    }

    /**
     * 比较数据表结构，并导出修改表sql
     *
     * @param sourceTable  源表
     * @param compareTable 对比表
     * @param dropColumn   是否产出列
     * @return 修改数据表sql
     */
    private static String compareTable(DbSimpleTableStructure sourceTable, DbSimpleTableStructure compareTable, boolean dropColumn) {
        StringBuilder alterSql = new StringBuilder();
        if (!sourceTable.equals(compareTable)) {
            String alterColumnSql = compareTableColumn(sourceTable, compareTable, dropColumn);
            if (!Strings.isNullOrEmpty(alterColumnSql)) {
                alterSql.append(alterColumnSql);
            }
            String alterIndexSql = compareTableIndex(sourceTable, compareTable, dropColumn);
            if (!Strings.isNullOrEmpty(alterIndexSql)) {
                alterSql.append(alterIndexSql);
            }
            System.out.println("数据库表" + sourceTable.getTableName() + "不一致，对比表参数");
            if (!sourceTable.getAlterSql().equals(compareTable.getAlterSql())) {
                System.out.println("数据库表参数不一致，导入修改参数sql" + sourceTable.getAlterSql());
                alterSql.append(sourceTable.getAlterSql());
            } else {
                System.out.println("数据库表参数一致");
            }
        }
        return alterSql.toString();
    }

    /**
     * 比较数据表列结构，并导出修改表sql
     *
     * @param sourceTable  源表
     * @param compareTable 对比表
     * @param dropColumn   是否产出列
     * @return 修改数据表sql
     */
    private static String compareTableColumn(DbSimpleTableStructure sourceTable, DbSimpleTableStructure compareTable, boolean dropColumn) {
        StringBuilder alterSql = new StringBuilder();
        System.out.println("数据库表" + sourceTable.getTableName() + "不一致，开始遍历表列");
        Map<String, DbSimpleColumnInfo> sourceColumns = sourceTable.getTableColumn();
        Map<String, DbSimpleColumnInfo> compareColumns = compareTable.getTableColumn();
        for (DbSimpleColumnInfo column : sourceColumns.values()) {
            System.out.print("对比列：" + column.getName() + ",");
            if (!compareColumns.containsKey(column.getName())) {
                System.out.println("比较表中不存在列" + column.getName() + ",导入添加sql：" + column.getAddSql());
                alterSql.append(column.getAddSql());
            } else if (!column.equals(compareColumns.get(column.getName()))) {
                System.out.println("比较表中列" + column.getName() + "不一致,导入修改sql：" + column.getAlterSql());
                alterSql.append(column.getAlterSql());
            } else {
                System.out.println("列" + column.getName() + "一致");
            }
        }
        for (DbSimpleColumnInfo column : compareColumns.values()) {
            if (!sourceColumns.containsKey(column.getName())) {
                System.out.println("比较表中列" + column.getName() + "在源表中不存在");
                if (dropColumn) {
                    System.out.println("设置中需要删除无用列，导入删除sql" + column.getDropSql());
                    alterSql.append(column.getDropSql());
                }
            }
        }
        return alterSql.toString();
    }

    /**
     * 比较数据表索引结构，并导出修改表sql
     *
     * @param sourceTable  源表
     * @param compareTable 对比表
     * @param dropColumn   是否产出列
     * @return 修改数据表sql
     */
    private static String compareTableIndex(DbSimpleTableStructure sourceTable, DbSimpleTableStructure compareTable, boolean dropColumn) {
        StringBuilder alterSql = new StringBuilder();
        System.out.println("数据库表" + sourceTable.getTableName() + "不一致，开始遍历表索引");
        Map<String, DbSimpleIndexInfo> sourceIndexes = sourceTable.getTableIndex();
        Map<String, DbSimpleIndexInfo> compareIndexes = compareTable.getTableIndex();
        for (DbSimpleIndexInfo index : sourceIndexes.values()) {
            System.out.print("对比索引：" + index.getName() + ",");
            if (!compareIndexes.containsKey(index.getName())) {
                System.out.println("比较表中不存在索引" + index.getName() + ",导入添加sql：" + index.getAddSql());
                alterSql.append(index.getAddSql());
                continue;
            } else if (!index.equals(compareIndexes.get(index.getName()))) {
                System.out.println("比较表中索引" + index.getName() + "不一致,导入修改sql：" + index.getAlterSql());
                alterSql.append(index.getAlterSql());
            } else {
                System.out.println("索引" + index.getName() + "一致");
            }
        }
        for (DbSimpleIndexInfo column : compareIndexes.values()) {
            if (!sourceIndexes.containsKey(column.getName())) {
                System.out.println("比较表中索引" + column.getName() + "在源表中不存在");
                if (dropColumn) {
                    System.out.println("设置中需要删除无用索引，导入删除sql" + column.getDropSql());
                    alterSql.append(column.getDropSql());
                }
            }
        }
        return alterSql.toString();
    }

    /**
     * 导出比较库sql
     *
     * @param dbName            比较库数据库名
     * @param dropTable         是否删除表
     * @param targetVersionName 目标版本名
     */
    private static void exportCompareSyncSql(String dbName, boolean dropTable, String targetVersionName) {
        System.out.println("开始导出比较库sql文件。");
        LocalDate date = LocalDate.now();
        StringBuilder filePath = new StringBuilder(System.getProperty("user.dir"));
        filePath.append("\\THD_1.0_" + date.format(DateTimeFormatter.ofPattern("yyyyMMdd")));
        exportSql(filePath.toString(), dbName, dropTable, false, 0, 0, 0);
    }

    /**
     * 在比较数据库中运行同步sql
     *
     * @param compareConnection 比较库链接
     * @param dropTable         是否删除无用表
     */
    private static void runCompareSyncSql(Connection compareConnection, boolean dropTable) {
        try {
            compareConnection.setAutoCommit(false);
            for (String sql : syncCreateSql.values()) {
                System.out.println("执行创建sql：" + sql);
                executeSql(compareConnection, sql);
            }
            for (String sql : syncAlterSql.values()) {
                System.out.println("执行修改sql：" + sql);
                executeSql(compareConnection, sql);
            }
            if (dropTable) {
                for (String sql : syncDropSql.values()) {
                    System.out.println("执行删除sql：" + sql);
                    executeSql(compareConnection, sql);
                }
            }
            compareConnection.commit();
        } catch (SQLException e) {
            try {
                compareConnection.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        }
    }

    /**
     * 执行sql
     *
     * @param connection 数据库链接
     * @param sql        数据库sql
     * @throws SQLException 执行sql异常
     */
    private static void executeSql(Connection connection, String sql) throws SQLException {
        String[] singles = sql.split(";");
        for (String singleSql : singles) {
            PreparedStatement preparedStatement = connection.prepareStatement(singleSql);
            preparedStatement.execute();
        }
    }

    /**
     * 查询出需要导出的数据库名
     *
     * @param connection            查询库链接
     * @param gameDbConfigTableName 配置导出库名表
     */
    private static void selectExportDbName(Connection connection, String gameDbConfigTableName) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM " + gameDbConfigTableName);
            try {
                while (resultSet.next()) {
                    String host = resultSet.getString("host");
                    if (!syncTargetDbName.containsKey(host)) {
                        syncTargetDbName.put(host, new ArrayList<>());
                    }
                    int type = resultSet.getInt("type");
                    int enable = resultSet.getInt("enabled");
                    String dbName = resultSet.getString("db_name");
                    if (type == 1 && enable == 1) {
                        syncTargetDbName.get(host).add(dbName);
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return;
    }

    /**
     * 导出同步sql
     *
     * @param dropTable         是否删除表
     * @param targetVersionName 目标版本名
     * @param tableCount        表数量
     */
    private static void exportTargetSyncSql(boolean dropTable, String targetVersionName, int tableCount) {
        System.out.println("开始导出模板库sql文件。");
        if (syncTargetDbName.size() == 0) {
            System.out.println("没有需要导出sql的数据库");
            return;
        }
        LocalDate date = LocalDate.now();
        StringBuilder commonPath = new StringBuilder(System.getProperty("user.dir"));
        commonPath.append("\\THD_1.0_" + date.format(DateTimeFormatter.ofPattern("yyyyMMdd")));
        commonPath.append("\\" + targetVersionName);
        int dbCount = 0;
        for (List<String> list : syncTargetDbName.values()) {
            dbCount += list.size();
        }
        for (Map.Entry<String, List<String>> entry : syncTargetDbName.entrySet()) {
            StringBuilder filePath = new StringBuilder(commonPath);
            filePath.append("\\" + entry.getKey());
            List<String> dbNames = entry.getValue();
            for (int i = 0; i < dbNames.size(); i++) {
                String dbName = dbNames.get(i);
                int dbIndex = drawDbIndexFormDbName(dbName);
                exportSql(filePath.toString(), dbName, dropTable, true, tableCount, dbCount, dbIndex);
            }
        }
    }

    /**
     * 从dbName中抽出db的索引
     *
     * @param dbName 数据库名
     * @return 数据库索引
     */
    private static int drawDbIndexFormDbName(String dbName) {
        int dbIndex = 0;
        String[] elements = dbName.split("_");
        dbIndex = Integer.parseInt(elements[elements.length - 1]);
        return dbIndex;
    }

    /**
     * 导出sql文件
     *
     * @param filePath       文件路径
     * @param dbName         数据库名
     * @param dropTable      是否删除表
     * @param autoSplitTable 是否自动分表
     * @param tableCount     总分表数量
     * @param dbCount        分库数量
     * @param dbIndex        当前库索引
     */
    private static void exportSql(String filePath, String dbName, boolean dropTable, boolean autoSplitTable, int tableCount, int dbCount, int dbIndex) {
        try {
            File file = new File(filePath + "\\" + dbName + ".sql");
            file.mkdirs();
            if (file.exists()) {
                file.delete();
                file.createNewFile();
            }
            System.out.println("导出文件：" + file.getName());
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            bufferedWriter.write("USE " + dbName + ";\n");
            bufferedWriter.write("START TRANSACTION;\n");
            if (autoSplitTable) {
                for (int j = 0; j < tableCount / dbCount; j++) {
                    int tableIndex = dbIndex + j * dbCount;
                    String tableSuffix = "_";
                    if (tableIndex < 10) {
                        tableSuffix = tableSuffix + "0";
                    }
                    tableSuffix = tableSuffix + tableIndex;
                    writeSql(bufferedWriter, tableSuffix, dropTable);
                }
            } else {
                writeSql(bufferedWriter, "", dropTable);
            }
            bufferedWriter.write("COMMIT;");
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 向文件写入sql
     *
     * @param bufferedWriter 文件bufferedWriter
     * @param tableSuffix    表后缀
     * @param dropTable      是否删除表
     * @throws IOException 抛出文件写异常
     */
    private static void writeSql(BufferedWriter bufferedWriter, String tableSuffix, boolean dropTable) throws IOException {
        for (Map.Entry<String, String> sqlEntry : syncCreateSql.entrySet()) {
            String tableName = sqlEntry.getKey() + tableSuffix;
            bufferedWriter.write(sqlEntry.getValue().replaceFirst(sqlEntry.getKey(), tableName) + ";\n");
        }
        for (Map.Entry<String, String> sqlEntry : syncAlterSql.entrySet()) {
            String tableName = sqlEntry.getKey() + tableSuffix;
            bufferedWriter.write(sqlEntry.getValue().replaceFirst(sqlEntry.getKey(), tableName) + "\n");
        }
        if (dropTable) {
            for (Map.Entry<String, String> sqlEntry : syncDropSql.entrySet()) {
                String tableName = sqlEntry.getKey() + tableSuffix;
                bufferedWriter.write(sqlEntry.getValue().replaceFirst(sqlEntry.getKey(), tableName) + "\n");
            }
        }
    }
}
