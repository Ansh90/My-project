package com.innominds.serviceLayer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.innominds.integrationLayer.CategoryDao;
import com.innominds.model.ProductDetail;
import com.innominds.model.SubCategoryDetail;

public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao cd;

	@Autowired
	HttpSession session;

	@Override
	public List<SubCategoryDetail> showCategoryService(int categoryId) {
		List list = cd.showCategoryDao(categoryId);
		Iterator iterator = list.iterator();
		ArrayList<SubCategoryDetail> list1 = new ArrayList<SubCategoryDetail>();
		while (iterator.hasNext()) {
			SubCategoryDetail s = (SubCategoryDetail) iterator.next();
			list1.add(s);
		}
		return list1;
	}

	@Override
	public List<ProductDetail> showSubCategoryService(int scategoryId) {
		List list = cd.showSubCategoryDao(scategoryId);
		Iterator iterator = list.iterator();
		ArrayList<ProductDetail> list1 = new ArrayList<ProductDetail>();
		while (iterator.hasNext()) {
			ProductDetail s = (ProductDetail) iterator.next();
			list1.add(s);
		}
		return list1;
	}

	@Override
	public Object showProductsService(int proId) {
		List<ProductDetail> list = cd.showProductsDao(proId);
		ProductDetail productDetail =list.get(0);
		return productDetail;
	}
}