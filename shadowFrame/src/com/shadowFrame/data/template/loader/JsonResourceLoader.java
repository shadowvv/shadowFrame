package com.shadowFrame.data.template.loader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.util.FileUtil;

/**
 * Json格式资源加载器,json文件根节点必须为root
 * <p>
 * 文件样式 参考resource目录下jsonSmaple.json
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class JsonResourceLoader implements IResourceLoader{
	
	static String JSON_ROOT = "root";

	@Override
	public <T> Map<String, T> loadResource(Class<T> resource, String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		Map<String, T> resources = new HashMap<>();
		InputStream inputStream;
		try {
			inputStream = new FileInputStream(file);
			StringBuffer stringBuffer = new StringBuffer();
			int byteRead = 0;
			while ((byteRead = inputStream.read()) != -1) {
				stringBuffer.append((char) byteRead);
			}
			inputStream.close();
			String data = stringBuffer.toString();
			
			JSONObject jsonO = new JSONObject(data);
			JSONArray jsonA = jsonO.getJSONArray(JSON_ROOT);
			String keyAttrName = null;
			String keyAttrValue = null;
			for(int i = 0;i<jsonA.length();i++){
				JSONObject element = jsonA.getJSONObject(i);
				String[] key = JSONObject.getNames(element);
				T resourceObject = resource.newInstance();
				for (String attribute : key) {
					ResourceLoader.setAttr(resourceObject, attribute, element.getString(attribute));
					if (keyAttrName == null) {
						keyAttrName = ResourceLoader.getIdFieldName(resource, attribute);
					}
					if(keyAttrName != null && keyAttrName.equals(attribute)){
						keyAttrValue = element.getString(attribute);
						if(resources.containsKey(keyAttrValue)){
							return null;
						}
						resources.put(keyAttrValue, resourceObject);
					}
				}
			}
		} catch (IOException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return resources;
	}

	@Override
	public <T> Map<String, T> loadResource(Class<T> resource) {
		JsonResource resAnnotation = resource.getAnnotation(JsonResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != JsonResourceLoader.class) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName());
	}

}
