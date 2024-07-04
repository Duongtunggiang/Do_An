package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Category;
import entity.Gift;
import entity.News;
import entity.Product;
import entity.ProductDetails;
import entity.User;

public class DAO {
	Connection connect = null; 			//ket noi SQL
	PreparedStatement prepare = null;   //Nem cau lenh sang SQL
	ResultSet resultSet = null; 		//Nhan ket qua tra ve
	
	//All product
	public List<Product> getAllProduct(){
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM favorite.product;";
		try {
			new DBContext();
			connect = DBContext.getConnection(); //Mo ket noi SQL
			prepare = connect.prepareStatement(query);
			resultSet = prepare.executeQuery();
			while (resultSet.next()) {
				list.add(new Product(
						resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getDouble(5),
						resultSet.getDouble(6)
						));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	//Top 1
	public List<Product> getTop1(){
		List<Product> top1 = new ArrayList<>();
		String top = "SELECT * FROM product ORDER BY id DESC LIMIT 1;";
		try {
			new DBContext();
			connect = DBContext.getConnection();
			prepare = connect.prepareStatement(top);
			resultSet = prepare.executeQuery();
			while (resultSet.next()) {
				top1.add(new Product(
						resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getDouble(5),
						resultSet.getDouble(6)
						));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return top1;
	}
	//Category
	public List<Category> getCategory() {
        List<Category> productList = new ArrayList<>();

        try {
            String sql = "select * from categoryProduct";
            prepare = connect.prepareStatement(sql);
            resultSet = prepare.executeQuery();

            while(resultSet.next()) {
            	productList.add(new Category(
            			resultSet.getInt(1),
            			resultSet.getString(2)
            			));
            }
           
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }
	//Category by id
	public List<Product> getProductByCateID(String id){
		List<Product> list = new ArrayList<>();
		String query = "Select * from `product` where cid = ?;";
		try {
			new DBContext();
			connect = DBContext.getConnection();
			prepare = connect.prepareStatement(query);
			prepare.setString(1, id);
			resultSet = prepare.executeQuery();
			
			while(resultSet.next()) {
				list.add(new Product(
						resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getDouble(5),
						resultSet.getDouble(6)
						));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}
	//Gift
	public List<Gift> getAllGift(String id){
		List<Gift> list = new ArrayList<>();
		
		try {
			String gift = "SELECT * FROM gift where productId = ?";
			new DBContext();
			connect = DBContext.getConnection(); 
			prepare = connect.prepareStatement(gift);
			prepare.setString(1, id);
			resultSet = prepare.executeQuery();
			while (resultSet.next()) {
				list.add(new Gift(
						resultSet.getInt(1),
						resultSet.getString(2)
						));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public Product getProductByID(String id){
		
		String query = "Select * from `product` where id = ?;";
		try {
			new DBContext();
			connect = DBContext.getConnection();
			prepare = connect.prepareStatement(query);
			prepare.setString(1, id);
			resultSet = prepare.executeQuery();
			
			while(resultSet.next()) {
				return new Product(
						resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getDouble(5),
						resultSet.getDouble(6)
						);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}
	
	//NEWS
	public List<News> getNews(){
		List<News> list = new ArrayList<>();
		String query = "SELECT * FROM news";
		try {
			new DBContext();
			connect = DBContext.getConnection(); 
			prepare = connect.prepareStatement(query);
			resultSet = prepare.executeQuery();
			while (resultSet.next()) {
				list.add(new News(
						resultSet.getInt(1),
						resultSet.getString(2)
						));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	//ProDetaillss
	public List<ProductDetails> getAllDetails(String id){
		List<ProductDetails> list = new ArrayList<>();
		
		try {
			String de = "SELECT * FROM productDetails where productId = ?";
			new DBContext();
			connect = DBContext.getConnection(); 
			prepare = connect.prepareStatement(de);
			prepare.setString(1, id);
			resultSet = prepare.executeQuery();
			while (resultSet.next()) {
				list.add(new ProductDetails(
						resultSet.getInt(1),
						resultSet.getInt(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getString(5),
						resultSet.getString(6),
						resultSet.getString(7),
						resultSet.getString(8),
						resultSet.getString(9),
						resultSet.getString(10),
						resultSet.getString(11),
						resultSet.getString(12),
						resultSet.getString(13),
						resultSet.getString(14),
						resultSet.getString(15),
						resultSet.getString(16),
						resultSet.getString(17),
						resultSet.getString(18),
						resultSet.getString(19),
						resultSet.getString(20),
						resultSet.getString(21),
						resultSet.getString(22)
						));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public User getUser(String id){
		String user = "select * from users where username = ?";
		try {
			new DBContext();
			connect = DBContext.getConnection();
			prepare = connect.prepareStatement(user);
			prepare.setString(1, id);
			resultSet = prepare.executeQuery();
			while(resultSet.next()) {
				return new User(
						resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getString(5),
						resultSet.getInt(6),
						resultSet.getString(7),
						resultSet.getString(8),
						resultSet.getString(9)
						);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	public User updateUser(String id, String fullName, String address, 
			String phoneNumber, String email) {
		String update = "update users set fullName = ?, address = ?, phoneNumber = ?, email = ? "
				+ "where id = ?";
		try {
			connect = DBContext.getConnection();
			PreparedStatement stm = connect.prepareStatement(update);
			stm.setString(1, fullName);
			stm.setString(2, address);
			stm.setString(3, phoneNumber);
			stm.setString(4, email);
			stm.setString(5, id);
			int rowUpdate = stm.executeUpdate();
			if(rowUpdate > 0) {
				return getUser(id);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
