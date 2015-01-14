package com.innominds.integrationLayer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import com.innominds.RowMapper.ProductDetailRowMapper;
import com.innominds.RowMapper.SubCategoryRowMapper;

public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List showCategoryDao(int categoryId) {

		List list = jdbcTemplate.query(
				"select * from subcategory where sub_id=?",
				new SubCategoryRowMapper(), categoryId);
		return list;
	}

	@Override
	public List showSubCategoryDao(int scategoryId) {

		List list = jdbcTemplate.query("select * from product where p_id=?",
				new ProductDetailRowMapper(), scategoryId);
		return list;
	}

	@Override
	public List showProductsDao(int proId) {
		System.out.println(proId);
		List list = jdbcTemplate.query("select * from product where prod_id=?",
				new ProductDetailRowMapper(), proId);
		return list;
	}

}
