/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models.products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import utils.DBUtils;

/**
 *
 * @author Minh Châu
 */
public class ProductDAO {

    public ArrayList<ProductDTO> related(int id) {
        ArrayList<ProductDTO> list = new ArrayList<>();
        int category_id = 0;
        try (Connection con = DBUtils.getConnection()) {
            String sql = " SELECT category_id FROM Products WHERE product_id = ? ";

            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, id);

                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        category_id = rs.getInt("category_id");
                    }
                }
            }

            if (category_id == 0) {
                return list;
            }

            sql = " SELECT * FROM Products WHERE category_id = ? AND product_id != ? ";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, category_id);
                ps.setInt(2, id);

                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        ProductDTO product = new ProductDTO();
                        product.setProduct_id(rs.getInt("product_id"));
                        product.setProduct_name(rs.getString("name"));
                        product.setDescription(rs.getString("description"));
                        product.setStock(rs.getInt("stock"));
                        product.setSold(rs.getInt("sold"));
                        product.setPrice(rs.getDouble("price"));
                        product.setImg_link(rs.getString("img_link"));
                        product.setCategory_id(rs.getInt("category_id"));

                        list.add(product);
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public ProductDTO load(int id) {
        ProductDTO product = null;

        try (Connection con = DBUtils.getConnection()) {
            String sql = " SELECT * FROM Products WHERE product_id = ? ";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                product = new ProductDTO();
                product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_name(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setStock(rs.getInt("stock"));
                product.setSold(rs.getInt("sold"));
                product.setPrice(rs.getDouble("price"));
                product.setImg_link(rs.getString("img_link"));
                product.setCategory_id(rs.getInt("category_id"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }

    public ArrayList<ProductDTO> list(String keyword) {
        ArrayList<ProductDTO> list = new ArrayList<>();

        try (Connection con = DBUtils.getConnection()) {
            String sql = " SELECT * FROM Products ";

            if (keyword != null && !keyword.isEmpty()) {
                sql += " WHERE name LIKE ? ";
            }

            PreparedStatement ps = con.prepareStatement(sql);

            if (keyword != null && !keyword.isEmpty()) {
                ps.setString(1, "%" + keyword + "%");
            }

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ProductDTO product = new ProductDTO();
                product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_name(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setStock(rs.getInt("stock"));
                product.setSold(rs.getInt("sold"));
                product.setPrice(rs.getDouble("price"));
                product.setImg_link(rs.getString("img_link"));
                product.setCategory_id(rs.getInt("category_id"));

                list.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

//    public ArrayList<ProductDTO> findProductsByType(String type) {
//        ArrayList<ProductDTO> list = new ArrayList<>();
//        String sql;
//        try (Connection con = DBUtils.getConnection()) {
//            PreparedStatement ps;
//            if (type.equals("")) {
//                sql = " SELECT * FROM Products ";
//                ps = con.prepareStatement(sql);
//            } else {
//                sql = " SELECT * FROM Products INNER JOIN Categories ON "
//                        + " Products.category_id = Categories.category_id WHERE Categories.name = ? ";
//                ps = con.prepareStatement(sql);
//                ps.setString(1, type);
//            }
//
//            ResultSet rs = ps.executeQuery();
//
//            while (rs.next()) {
//                ProductDTO product = new ProductDTO();
//
//                product.setProduct_id(rs.getInt("product_id"));
//                product.setProduct_name(rs.getString("name"));
//                product.setSold(rs.getInt("sold"));
//                product.setPrice(rs.getDouble("price"));
//                product.setCategory_id(rs.getInt("category_id"));
//                product.setDescription(rs.getString("description"));
//                product.setImg_link(rs.getString("img_link"));
//                product.setStock(rs.getInt("stock"));
//
//                list.add(product);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
    public ArrayList<ProductDTO> sortProducts(String category, String sort) {
        ArrayList<ProductDTO> list = new ArrayList<>();
        String sql = " SELECT * FROM Products ";
        try (Connection con = DBUtils.getConnection()) {
            PreparedStatement ps;

            if (!category.isEmpty()) {
                sql += " INNER JOIN Categories ON Products.category_id = Categories.category_id WHERE Categories.name = ? ";
            }

            if (!sort.isEmpty()) {
                switch (sort) {
                    case "price-asc":
                        sql += " ORDER BY price ASC ";
                        break;
                    case "price-desc":
                        sql += " ORDER BY price DESC ";
                        break;
                    case "name-asc":
                        sql += " ORDER BY name ASC ";
                        break;
                    case "name-desc":
                        sql += " ORDER BY name DESC ";
                        break;
                    default:
                        break;
                }
            }

            ps = con.prepareStatement(sql);

            if (!category.isEmpty()) {
                ps.setString(1, category);
            }

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ProductDTO product = new ProductDTO();

                product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_name(rs.getString("name"));
                product.setSold(rs.getInt("sold"));
                product.setPrice(rs.getDouble("price"));
                product.setCategory_id(rs.getInt("category_id"));
                product.setDescription(rs.getString("description"));
                product.setImg_link(rs.getString("img_link"));
                product.setStock(rs.getInt("stock"));

                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
