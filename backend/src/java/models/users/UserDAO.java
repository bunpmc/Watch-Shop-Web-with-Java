/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBUtils;

/**
 *
 * @author Minh Châu
 */
public class UserDAO {

    public UserDTO login(String phone, String password) {
        UserDTO user = null;

        try (Connection con = DBUtils.getConnection()) {
            String sql = " SELECT * FROM Users WHERE phone = ? AND password = ? ";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, phone);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new UserDTO();
                user.setUser_id(rs.getInt("user_id"));
                user.setUsername(rs.getString("username"));
                user.setCreated_at(rs.getDate("created_at"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                user.setFullName(rs.getString("fullName"));
                user.setLocation(rs.getString("address"));
                user.setPhone(rs.getString("phone"));
                user.setStatus(rs.getString("status"));
                user.setPassword(rs.getString("password"));
                user.setRoleID(rs.getInt("role_id"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(user);
        return user;
    }

    public UserDTO register(String username, String phone, String password) {
        UserDTO user = null;

        try (Connection con = DBUtils.getConnection()) {
            String sql = "INSERT INTO Users(username, phone, password, created_at, status) VALUES (?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, phone);
            ps.setString(3, password);
            ps.setString(4, java.time.LocalDate.now().toString()); // Lưu thời gian tạo tài khoản
            ps.setString(5, "ACTIVE"); // Trạng thái mặc định

            int rowCount = ps.executeUpdate();

            if (rowCount == 1) {
                user = login(phone, password);
            }

        } catch (SQLException e) {
        }
        return user;
    }

}
