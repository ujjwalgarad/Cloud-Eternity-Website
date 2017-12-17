package com.eternity.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.hibernate.Query;

import com.eternity.pojo.Address;
import com.eternity.pojo.UserAccount;
//import org.apache.commons.dbutils.DbUtils;

public class UserAccountDAO extends DAO{

	public UserAccountDAO(){
		
	}
	
	public UserAccount createUser(String username, String password,String firstName, String lastName, String streetName, String city, String zipcode, String state, String country, String email, String telephone){
		
		begin();
		
		UserAccount ua = new UserAccount();
		ua.setUsername(username);
		ua.setPassword(password);
		ua.setFirstName(firstName);
		ua.setLastName(lastName);
		ua.setEmail(email);
		ua.setRole("user");
		ua.setTelephone(telephone);
		
		Address ad = new Address();
		 
		ad.setStreetName(streetName);
		ad.setCity(city);
		ad.setZipcode(zipcode);
		ad.setState(state);
		ad.setCountry(country);
		
		ua.setAddress(ad);
		
		getSession().save(ua);
        
        commit();
        return ua;
	}
	
	public UserAccount checkLogin(String username, String password){
		
		begin();
		
		String sql = " from UserAccount u where u.username=:name and u.password=:pass";
		Query query = getSession().createQuery(sql);
		query.setParameter("name", username);
        query.setParameter("pass", password);
       
        UserAccount u = (UserAccount)query.uniqueResult();
        getSession().save(u);
        commit();
        return u;
       
        /*List<UserAccount> list = query.list();
        if (list.size() > 0) {
        	
            return true;
        }
        
        return false;*/
		} 
		
	public boolean checkRole(String username){
		begin();
		String sql = "from UserAccount u where u.username=:name";
		Query query = getSession().createQuery(sql);
		query.setParameter("name", username);
		UserAccount u = (UserAccount) query.uniqueResult();
		String roleName = u.getRole();
		//query.setParameter("rolename",u.getRole() );
		System.out.print(roleName);
		if(roleName.equals("admin")){
			return true;
		}
		else{
			return false; 
		}
		
	}
	
	public void dbFetch() throws SQLException{
		
		String driver = "com.mysql.jdbc.Driver";
		DbUtils.loadDriver(driver);
		String dburl = "jdbc:mysql://54.86.66.223:3306/eternitydb";
		String dbuser = "admindb";
		String password = "Sea2s0n1!";
		
		Connection conn = DriverManager.getConnection(dburl,dbuser,password);
//		String query = "select sampletable.employeename, sampletable.deptname, sampletable.total "
//				+ "from sampletable inner join sampletable2 on sampletable.deptname=sampletable2.deptname";
		
		String query ="SELECT sampletable.employeename, sampletable.deptname, sampletable.title "
				+ "FROM sampletable JOIN sampletable2 ON sampletable.deptname=sampletable2.deptname "
				+ "JOIN sampletable3 ON sampletable2.deptname=sampletable3.deptname "
				+ "WHERE sampletable.postal<2000 UNION "
				+ "SELECT sampletable.employeename, sampletable.deptname, sampletable.title "
				+ "FROM sampletable JOIN sampletable2 ON sampletable.deptname=sampletable2.deptname "
				+ "JOIN sampletable3 ON sampletable2.deptname=sampletable3.deptname "
				+ "WHERE sampletable.postal<2100";
		Statement state = conn.createStatement();
		ResultSet result = state.executeQuery(query);
		
		int i=0;
		while(result.next()){
			i++;
		}
		
		System.out.println(i);
		result.close();
		state.close();
		conn.close();

//		begin();
//		String sql = "select emplo";
//		Query query = getSession().createQuery(sql);
//		query.setParameter("name", username);
//		UserAccount u = (UserAccount) query.uniqueResult();
//		String roleName = u.getRole();
//		//query.setParameter("rolename",u.getRole() );
//		System.out.print(roleName);
//		if(roleName.equals("admin")){
//			return true;
//		}
//		else{
//			return false; 
//		}
	}
	
}
