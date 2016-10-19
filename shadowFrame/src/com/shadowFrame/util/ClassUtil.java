package com.shadowFrame.util;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/**
 * 类扫描器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ClassUtil {

	/**
	 * class文件类型
	 */
	static String FILE = "file";

	/**
	 * jar包
	 */
	static String JAR = "jar";

	/**
	 * 包名间分隔符
	 */
	static char PACKAGESEPARATOR = '.';

	/**
	 * 类文件后缀
	 */
	static String CLASSFILE_SUFFIX = ".class";

	/**
	 * 遍历包目录下所有类
	 * 
	 * @param packageName
	 *            包名
	 * @param subDir
	 *            是否遍历子包
	 * @return 类集合
	 */
	public static List<Class<?>> getAllClasses(final String packageName, final boolean subDir) {
		List<Class<?>> classes = new ArrayList<>();

		// 包名转换为目录
		String packageDirName = packageName.replace(PACKAGESEPARATOR, File.separatorChar);
		try {
			// 获得目录下所有文件和文件夹URL
			Enumeration<URL> dirs = Thread.currentThread().getContextClassLoader().getResources(packageDirName);
			while (dirs.hasMoreElements()) {
				URL url = dirs.nextElement();
				String protocol = url.getProtocol();
				if (FILE.equals(protocol)) {
					String filePath = URLDecoder.decode(url.getFile(), "UTF-8");
					classes.addAll(getClassesInPackageByFile(packageName, filePath, subDir));
				} else if (JAR.equals(protocol)) {
					classes.addAll(getClassesInPackageByJar(url, subDir));
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return classes;
	}

	/**
	 * 从jar包中遍历类
	 * 
	 * @param jarUrl
	 *            jar包地址
	 * @param subDir
	 *            是否遍历子包
	 * @return 类集合
	 */
	public static List<Class<?>> getClassesInPackageByJar(final URL jarUrl, final boolean subDir) {
		List<Class<?>> classes = new ArrayList<>();

		try {
			JarFile jar = ((JarURLConnection) jarUrl.openConnection()).getJarFile();
			Enumeration<JarEntry> entries = jar.entries();
			while (entries.hasMoreElements()) {
				JarEntry entry = entries.nextElement();
				String name = entry.getName();
				if (name.charAt(0) == File.separatorChar) {
					name = name.substring(1);
				}
				String packageName = name;
				int idx = name.lastIndexOf(File.separatorChar);
				if (idx != -1) {
					packageName = name.substring(0, idx).replace(File.separatorChar, PACKAGESEPARATOR);
					if (subDir) {
						if (name.endsWith(CLASSFILE_SUFFIX) && !entry.isDirectory()) {
							String className = name.substring(packageName.length() + 1,
									name.length() - CLASSFILE_SUFFIX.length());
							try {
								classes.add(Class.forName(packageName + "." + className));
							} catch (ClassNotFoundException e) {
								e.printStackTrace();
							}
						}
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		return classes;
	}

	/**
	 * 从目录下class文件中获得类
	 * 
	 * @param packageName
	 *            包名
	 * @param packagePath
	 *            包路径
	 * @param subDir
	 *            是否遍历子目录
	 * @return 类集合
	 */
	public static List<Class<?>> getClassesInPackageByFile(final String packageName, final String packagePath,
			final boolean subDir) {
		List<Class<?>> classes = new ArrayList<>();
		// 检测文件属性
		File dir = new File(packagePath);
		if (!dir.exists() || !dir.isDirectory()) {
			return classes;
		}
		// 筛选文件
		File[] dirFiles = dir.listFiles(new FileFilter() {

			@Override
			public boolean accept(File file) {
				if (subDir && file.isDirectory()) {
					return true;
				}
				if (file.getName().endsWith(CLASSFILE_SUFFIX)) {
					return true;
				}
				return false;
			}
		});

		if (dirFiles == null) {
			return classes;
		}
		// 遍历文件
		for (File file : dirFiles) {
			// 是否遍历子目录
			if (file.isDirectory()) {
				classes.addAll(getClassesInPackageByFile(packageName + PACKAGESEPARATOR + file.getName(),
						file.getAbsolutePath(), subDir));
			} else {
				String className = file.getName().substring(0, file.getName().length() - CLASSFILE_SUFFIX.length());
				try {
					classes.add(Class.forName(packageName + PACKAGESEPARATOR + className));
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			}
		}
		return classes;
	}

	/**
	 * 获得映射对象属性字段
	 * 
	 * @param instance
	 *            对象
	 * @param attrName
	 *            字段名
	 * @return
	 */
	public static Field getClassField(Object instance, String attrName) {
		Field field = null;
		try {
			try {
				Class<?> instanceClass = instance.getClass();
				do {
					try {
						field = instanceClass.getField(attrName);
					} catch (Exception e) {
						instanceClass = instanceClass.getSuperclass();
					}
				} while (field == null);
			} catch (Exception e) {
				Class<?> instanceClass = instance.getClass();
				do {
					try {
						field = instanceClass.getDeclaredField(attrName);
					} catch (Exception ex) {
						instanceClass = instanceClass.getSuperclass();
					}
				} while (field == null);
			}
		} catch (Exception e) {
		}

		if (field != null) {
			field.setAccessible(true);
		}
		return field;
	}

	public static void main(String[] args) {
		System.out.println(getAllClasses("com.shadowFrame.data", true));
	}

}