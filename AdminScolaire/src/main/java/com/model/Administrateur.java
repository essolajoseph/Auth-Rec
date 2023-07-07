package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Administrateur {

    String email;
    String password;

    public Administrateur() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean verifAdmin( String email,String password){
        ConnexionDB connexionDB=new ConnexionDB();
        boolean resp=false;
        try (Connection conn = connexionDB.getConnection()) {
            String selectQuery = "SELECT COUNT(*) FROM administrateur WHERE email = ? AND  password = ? ";
            PreparedStatement selectStatement = conn.prepareStatement(selectQuery);
            selectStatement.setString(1, email); // Remplacez "DUPONT" par le nom de l'étudiant
            selectStatement.setString(2, password);
            ResultSet resultSet = selectStatement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt(1);
            if (count > 0) {
                System.out.println("Les informations de l'administrateur sont correctes !");
                resp=true;
                return resp;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resp;
    }
}
