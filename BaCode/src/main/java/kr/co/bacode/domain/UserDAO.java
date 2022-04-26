package kr.co.bacode.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class UserDAO {

    private DataSource ds;
        // DAO 생성
        private static UserDAO dao = new UserDAO();

        private UserDAO() {
            try {
                Context ct = new InitialContext();
                ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        // 싱글턴 패턴
        public static UserDAO getInstance() {
            if(dao == null) {
                dao = new UserDAO();
            }
            return dao;
        }
    	public void userUpdate(String uId, String uPw, String uName, String email, String pNum, String addr, String nckName) {
    		Connection con = null;
    		PreparedStatement pstmt = null;
    		try {
    			
    			con = ds.getConnection();
    			String up = "UPDATE userTbl SET upw=?, uname=?, email=?, p_num=?, addr=?, nck_name=? WHERE uid = ?";
    			pstmt  = con.prepareStatement(up);
    			pstmt.setString(1, uPw);
    			pstmt.setString(2, uName);
    			pstmt.setString(3, email);
    			pstmt.setString(4, pNum);
    			pstmt.setString(5, addr);
    			pstmt.setString(6, nckName);
    			pstmt.setString(7, uId);
    			pstmt.executeUpdate();
    		} catch(Exception e){
    			e.printStackTrace();
    		} finally {
    			try {
    				con.close();
    				pstmt.close();
    			} catch(Exception e) {
    				e.printStackTrace();
    			}
    			}
    		}
    	public void userDelete(String uId){
    		Connection con = null;
    		PreparedStatement pstmt = null;
    		try {
    			// 연결해주세요.
    			con = ds.getConnection();
    			String sql = "DELETE FROM userTbl WHERE uid = ?";
    			pstmt = con.prepareStatement(sql);

    			pstmt.setString(1, uId);

    			pstmt.executeUpdate();
    		}catch(Exception e) {
    			e.printStackTrace();
    		}finally {
    			try {
    			// con, pstmt 닫기
    				con.close();
    				pstmt.close();
    			} catch(Exception e) {
    				e.printStackTrace();
    			}
    		}
    	}
    	public UserVO getUserDetail(String uId) {
    		Connection con = null;
    		PreparedStatement pstmt = null;
    		ResultSet rs = null;
    		UserVO user = new UserVO();
    		try {

    			con = ds.getConnection();
    			String sql = "SELECT * FROM userTbl WHERE uid = ?";
    			pstmt = con.prepareStatement(sql);
    			pstmt.setString(1, uId); 
    			rs = pstmt.executeQuery();
    			if(rs.next()) {
    				user.setuId(rs.getString(1));
    				user.setuPw(rs.getString(2));
    				user.setuName(rs.getString(3));
    				user.setEmail(rs.getString(4));
    				user.setHeart(rs.getInt(5));
    				user.setpNum(rs.getString(6));
    				user.setAddr(rs.getString(7));
    				user.setNckName(rs.getString(8));
    			} 
    		}catch(Exception e) {
    			e.printStackTrace();
    		}finally {
    			try {
    				con.close();
    				pstmt.close();
    			} catch(Exception e) {
    				e.printStackTrace();
    			}
    		}
    		return user;
    	}
}