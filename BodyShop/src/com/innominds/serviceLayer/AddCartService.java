package com.innominds.serviceLayer;

import java.util.List;
import java.util.Vector;

public interface AddCartService {
	
	Object addToCartService(int pId,int q);
	
	void orderPlaceService(Object obj, String nUser1,String pname,int pprice,int q,int tp,int pid);
	public void orderPlace(int n,int pid) ;
	/*void orderPlaceServiceEx(String uName,String pname,int pprice,int q,int tp,int pid);*/
	long orderPlaceServiceEx(Object obj);
	/*
	void cartIdGen(String sessionId,int prod_id,String prod_name,int prod_price,int q);*/

}
