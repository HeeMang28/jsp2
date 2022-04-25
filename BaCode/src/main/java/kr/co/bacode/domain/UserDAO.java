package kr.co.bacode.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
    private String dbType = "com.mysql.cj.jdbc.Driver";
    private String connectUrl = "jdbc:mysql://localhost:3306/bacode?serverTimezone=UTC";
    private String connectId = "root";
    private String connectPw = "mysql";
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
    			String up = "UPDATE userTbl SET upw=? , uname=?, email=?, p_num=?, addr=?, nck_name WHERE uid = ?";
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
}