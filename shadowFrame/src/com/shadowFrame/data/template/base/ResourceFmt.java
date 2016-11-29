package com.shadowFrame.data.template.base;

import com.shadowFrame.data.template.loader.CsvResourceLoader;
import com.shadowFrame.data.template.loader.ExcelResourceLoader;
import com.shadowFrame.data.template.loader.JsonResourceLoader;
import com.shadowFrame.data.template.loader.PropertiesResourceLoader;
import com.shadowFrame.data.template.loader.XmlResourceLoader;
import com.shadowFrame.data.template.writer.CsvResourceWriter;
import com.shadowFrame.data.template.writer.ExcelResourceWriter;
import com.shadowFrame.data.template.writer.JsonResourceWriter;
import com.shadowFrame.data.template.writer.PropertiesResourceWriter;
import com.shadowFrame.data.template.writer.XmlResourceWriter;

/**
 * 引擎支持的资源类型
 * 
 * @author Shadow
 * @version 1.0.0
 */
public enum ResourceFmt {

	EXCEL_RES {

		@Override
		public IResourceWriter getWriter() {
			return new ExcelResourceWriter();
		}

		@Override
		public IResourceLoader getLoader() {
			return new ExcelResourceLoader();
		}
	},
	JSON_RES {

		@Override
		public IResourceWriter getWriter() {
			return new JsonResourceWriter();
		}

		@Override
		public IResourceLoader getLoader() {
			return new JsonResourceLoader();
		}

	},
	CSV_RES {

		@Override
		public IResourceWriter getWriter() {
			return new CsvResourceWriter();
		}

		@Override
		public IResourceLoader getLoader() {
			return new CsvResourceLoader();
		}

	},
	PROPERTIES_RES {

		@Override
		public IResourceWriter getWriter() {
			return new PropertiesResourceWriter();
		}

		@Override
		public IResourceLoader getLoader() {
			return new PropertiesResourceLoader();
		}

	},
	XML_RES {

		@Override
		public IResourceWriter getWriter() {
			return new XmlResourceWriter();
		}

		@Override
		public IResourceLoader getLoader() {
			return new XmlResourceLoader();
		}

	};

	public abstract IResourceWriter getWriter();

	public abstract IResourceLoader getLoader();
}
