package com.util;

import javax.servlet.ServletContextListener;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;


@WebListener
public class DataSourceUtils implements ServletContextListener {
  @Resource(name = "jdbc/MySQL")
  private static DataSource dSource;
  public static Connection getConnection() throws SQLException {
      return dSource.getConnection();
    }
  private static Logger logger = Logger.getLogger(DataSource.class.getName());
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
      logger.info("启动DataSource");
    }
}
