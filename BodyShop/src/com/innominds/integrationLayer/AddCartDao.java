package com.innominds.integrationLayer;

import java.util.List;
import java.util.Vector;

public interface AddCartDao {
	
	List addToCartDao(int pId);
	
	/*void orderPlaceDao(String uName,int rInt,String pname,int pprice,int q,int tp);*/
	long orderPlaceDao(Object obj);
	void orderPlaceDao1(String uName,int rInt,String pname,int pprice,int q,int tp);
	
	Object addNewUserDao(Object obj);
	
	void updateStockDao(int n, int pid);
	
	public String verifyUserAtCartDao(String uname) ;
	
	int exOrderDao(String uname);
	
	void cartIdGenDao(String sessionId,int pId,String prod_name,int prod_price,int q,int tot_price);

}
