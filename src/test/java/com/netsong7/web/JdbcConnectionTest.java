package com.netsong7.web;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.junit.Test;

public class JdbcConnectionTest {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/test";
	private static final String USER = "root";
	private static final String PW = "1111";
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		try(Connection con = DriverManager.getConnection(URL, USER, PW)){
			System.out.println(con);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	@Test
	public void testJndiConnection() throws Exception {
		try{
			Context ctx = new InitialContext();
			DataSource ds = 
				(DataSource)ctx.lookup("java:comp/env/jdbc/TestDB");
			Connection con = ds.getConnection();
			System.out.println(con);
		}
		catch(Exception err){
			err.printStackTrace();
		}
	}
}



