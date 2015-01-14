package com.innominds.integrationLayer;

import java.util.Map;

public interface UserDao {

	public String verifyUserDao(String uname ,String pass);

	public String registerUserDao(Object obj);
	
	public  Map ShowProfileDao(String uname,String pass);

	public String updateProfileDao(Object obj);

}
