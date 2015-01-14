package com.innominds.serviceLayer;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

public interface UserService {
	
	String registerUser(Object obj);
	
	String verifyUser(String uname,String pass);
	
	List showProfileUser(String uname, String pass);
	
	String updateProfileUser(Object obj);
}
