// OrderDAO.java
package models.orders;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

public class OrderDAO {

    // Create a new order
    public boolean createOrder(OrderDTO order) throws SQLException {
        String sql = "INSERT INTO Orders (user_id, totalPrice, status) VALUES (?, ?, ?)";
        try (Connection connection = DBUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, order.getUserId());
            statement.setDouble(2, order.getTotalPrice());
            statement.setString(3, order.getStatus());
            return statement.executeUpdate() > 0;
        }
    }

    // Retrieve an order by ID
    public OrderDTO getOrderById(int orderId) throws SQLException {
        String sql = "SELECT * FROM Orders WHERE order_id = ?";
        try (Connection connection = DBUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, orderId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return new OrderDTO(
                    resultSet.getInt("order_id"),
                    resultSet.getInt("user_id"),
                    resultSet.getDouble("totalPrice"),
                    resultSet.getString("status"),
                    resultSet.getString("created_at")
                );
            }
        }
        return null;
    }

    // Retrieve all orders
    public List<OrderDTO> getAllOrders() throws SQLException {
        String sql = "SELECT * FROM Orders";
        List<OrderDTO> orders = new ArrayList<>();
        try (Connection connection = DBUtils.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                orders.add(new OrderDTO(
                    resultSet.getInt("order_id"),
                    resultSet.getInt("user_id"),
                    resultSet.getDouble("totalPrice"),
                    resultSet.getString("status"),
                    resultSet.getString("created_at")
                ));
            }
        }
        return orders;
    }

    // Update order status
    public boolean updateOrderStatus(int orderId, String status) throws SQLException {
        String sql = "UPDATE Orders SET status = ? WHERE order_id = ?";
        try (Connection connection = DBUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, status);
            statement.setInt(2, orderId);
            return statement.executeUpdate() > 0;
        }
    }

    // Delete an order by ID
    public boolean deleteOrder(int orderId) throws SQLException {
        String sql = "DELETE FROM Orders WHERE order_id = ?";
        try (Connection connection = DBUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, orderId);
            return statement.executeUpdate() > 0;
        }
    }
}
