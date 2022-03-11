/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sms.businesslogic.user;

import com.sms.bean.UserBean;
import com.sms.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author devzo
 */
public class UserLogic {

    public UserBean getLogin(String username, String password) throws SQLException {

        UserBean ub = new UserBean();
        Connection conn = null;

        try {
            conn = new DBConnection().getConnection();
            String sql = "SELECT * FROM tbl_user WHERE nic = ? AND pword = ? AND status_code = 'ACTIVE' ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ub.setId(rs.getInt("id"));
                ub.setNic(rs.getString("nic"));
                ub.setRole_code(rs.getString("role_code"));
                ub.setStatus_code(rs.getString("status_code"));
                ub.setIsLog(true);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }

        return ub;
    }

}
