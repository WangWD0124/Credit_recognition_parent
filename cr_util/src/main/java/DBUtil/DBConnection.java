package DBUtil;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

public class DBConnection extends Properties {

	private static final long serialVersionUID = 1L;
	private static String driver;
	private static String url;
	private static String userName;
	private static String password;
	
	static{
		Properties prop = new Properties();
		try {
			prop.load(new FileReader("D:\\MSoft_MyEclipse2017\\Workspaces\\MyEclipse 2017 CI\\Credit_recognition_parent\\cr_util\\src\\main\\java\\DBUtil\\db.properties"));
			url = prop.getProperty("url");
			userName = prop.getProperty("userName");
			password = prop.getProperty("password");
			driver = prop.getProperty("driverName");

			System.out.println("加载数据库配置文件，驱动器");
			Class.forName(driver);
			
		} catch (FileNotFoundException e) {
			System.out.println("找不到配置文件");
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("找不到驱动器");
			e.printStackTrace();
		}
	}
    
    //获取连接对象
    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url,userName,password);
            System.out.println("获取数据库对象");
        } catch (Exception e) {
        	System.out.println("获取数据库对象失败");
           e.printStackTrace();
        }
        return conn;
    }

    //关闭资源
    public void close(Connection conn, PreparedStatement pstmt ,ResultSet rs) {
        try {
            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

