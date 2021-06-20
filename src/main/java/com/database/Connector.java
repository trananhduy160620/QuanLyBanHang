/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
    private String dbURL = "jdbc:mysql://localhost:3306/dailybanhang";
    private String username = "root";
    private String password = "";
    private Connection connection;
    private Connector() {}

    public static Connector instance = new Connector();

    public Connection getConnection() {
        try {
            this.connection = DriverManager.getConnection(this.dbURL, this.username, this.password);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return this.connection;
    }
    
}
