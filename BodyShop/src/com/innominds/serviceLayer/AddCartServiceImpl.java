package com.innominds.serviceLayer;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Vector;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.innominds.integrationLayer.AddCartDao;
import com.innominds.model.NewUser;
import com.innominds.model.ProductDetail;

public class AddCartServiceImpl implements AddCartService, Serializable {

	@Autowired
	private AddCartDao ad;

	@Autowired
	HttpSession session;

	@Override
	public Object addToCartService(int pId, int q) {

		List list = ad.addToCartDao(pId);
		ProductDetail s = (ProductDetail)list.get(0);
		return s;
	}
	@Override
	public long orderPlaceServiceEx(Object obj) {
		long l = ad.orderPlaceDao(obj);
		return l;
	}
	@Override
	public void orderPlaceService(Object obj, String nUser1, String pname,
			int pprice, int q, int tp, int pid) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void orderPlace(int n, int pid) {
		// TODO Auto-generated method stub
		
	}
}