/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author User
 */
public class DatabaseConnection {

   private static Connection conn = null;
    //tuankiet:"jdbc:sqlserver://DESKTOP-1JMA68C\\\\ADMIN:1433;databaseName=PerfumeShopV3;"
                //+ "user=sa;password=123;encrypt=true;trustServerCertificate=true;"
    public static Connection getConnection() throws Exception {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection("jdbc:sqlserver://"
                    + "LAPTOP-FKTIMU1G:1433;databaseName=FFShop;"
                    + "user=sa;password=123456;encrypt=true;"
                    + "trustServerCertificate=true;");
        return conn;
    }
    public static void main(String[] args) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            if (conn != null) {
                System.out.println("Kết nối thành công!");
                conn.close();
            } else {
                System.out.println("Không thể kết nối đến cơ sở dữ liệu.");
            }
        } catch (Exception e) {
            System.out.println("Lỗi kết nối: " + e.getMessage());
        }
    }
}
