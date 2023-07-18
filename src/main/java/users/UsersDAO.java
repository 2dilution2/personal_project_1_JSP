package users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsersDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UsersDAO() {
		try {
			String dbURL ="jdbc:mysql://localhost:3306/jsp_1";
			String dbID = "root";
			String dbPassword ="1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			// No need to explicitly load the driver class
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL =  "SELECT userPassword FROM users WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String dbPassword = rs.getString(1); // DB에서 조회한 비밀번호
			    if (dbPassword.equals(userPassword)) {
			        return 1;
				} else {
					return 0;
				}
			}
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public String getUserNick(String userID) {
	    String SQL = "SELECT userNick FROM users WHERE userID = ?";
	    try {
	        pstmt = conn.prepareStatement(SQL);
	        pstmt.setString(1, userID);
	        rs = pstmt.executeQuery();
	        if (rs.next()) {
	            return rs.getString("userNick");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return null;
	}

	
	public int join(Users users) {
		String SQL = "INSERT INTO users VALUES (?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, users.getUserID());
			pstmt.setString(2, users.getUserPassword());
			pstmt.setString(3, users.getUserName());
			pstmt.setString(4, users.getUserNick());
			pstmt.setString(5, users.getUserNumber1() + users.getUserNumber2() + users.getUserNumber3());
			pstmt.setString(6, users.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
