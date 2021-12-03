package com.shadowFrame.data.template.base;

import com.shadowFrame.data.template.loader.*;
import com.shadowFrame.data.template.writer.*;

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
