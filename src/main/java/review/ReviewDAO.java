package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO {
	private Connection conn;
	private ResultSet rs;

	public ReviewDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/jsp_1";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			// No need to explicitly load the driver class
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int write(String reviewTitle, String userID, int reviewRating, String reviewContent) {
	    String getUserNickSQL = "SELECT userNick FROM users WHERE userID = ?";
	    String userNick = null;

	    try {
	        PreparedStatement pstmt1 = conn.prepareStatement(getUserNickSQL);
	        pstmt1.setString(1, userID);
	        rs = pstmt1.executeQuery();
	        if (rs.next()) {
	            userNick = rs.getString("userNick");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    if (userNick == null) {
	        return -2; // userID에 해당하는 userNick을 찾을 수 없음
	    }

	    String SQL = "INSERT INTO review (reviewRating, reviewTitle, userNick, reviewContent, reviewAvailable) VALUES (?, ?, ?, ?, 1)";
	    try {
	        PreparedStatement pstmt2 = conn.prepareStatement(SQL);
	        pstmt2.setInt(1, reviewRating);
	        pstmt2.setString(2, reviewTitle);
	        pstmt2.setString(3, userNick);
	        pstmt2.setString(4, reviewContent);
	        return pstmt2.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return -1;
	}

	public void close() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public ArrayList<Review> getList(int pageNumber){
		String SQL = "SELECT * FROM review ORDER BY reviewID DESC LIMIT ?, 6";
		ArrayList<Review> list = new ArrayList<Review>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, (pageNumber - 1) * 6);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Review review = new Review();
				review.setReviewID(rs.getInt("reviewID"));
				review.setReviewRating(rs.getInt("reviewRating"));
				review.setReviewTitle(rs.getString("reviewTitle"));
				review.setUserNick(rs.getString("userNick"));
				review.setReviewDate(rs.getString("reviewDate"));
				review.setReviewContent(rs.getString("reviewContent"));
				review.setReviewAvailable(rs.getInt("reviewAvailable"));
				list.add(review);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM review ORDER BY reviewID DESC LIMIT ?, 6";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, (pageNumber - 1) * 6);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Review getReview(int reviewID) {
		String SQL = "SELECT * FROM review WHERE reviewID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, reviewID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Review review = new Review();
				review.setReviewID(rs.getInt("reviewID"));
				review.setReviewRating(rs.getInt("reviewRating"));
				review.setReviewTitle(rs.getString("reviewTitle"));
				review.setUserNick(rs.getString("userNick"));
				review.setReviewDate(rs.getString("reviewDate"));
				review.setReviewContent(rs.getString("reviewContent"));
				review.setReviewAvailable(rs.getInt("reviewAvailable"));
				return review;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int update(int reviewID, String reviewTitle, String reviewContent) {
    String SQL = "UPDATE review SET reviewTitle = ?, reviewContent = ? WHERE reviewID = ?";
    try {
        PreparedStatement pstmt = conn.prepareStatement(SQL);
        pstmt.setString(1, reviewTitle);
        pstmt.setString(2, reviewContent);
        pstmt.setInt(3, reviewID);
        return pstmt.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return -1;
	}
	
	public int delete(int reviewID) {
		String SQL = "UPDATE review SET reviewAvailable = 0 WHERE reviewID = ?";
	    try {
	        PreparedStatement pstmt = conn.prepareStatement(SQL);
	        pstmt.setInt(1, reviewID);
	        return pstmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return -1;
	}
}
