package com.innominds.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.innominds.model.ProductDetail;

public class ProductDetailRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int i) throws SQLException {

		ProductDetail pd = new ProductDetail();
		pd.setProd_id(rs.getInt(2));
		pd.setProd_name(rs.getString(3));
		pd.setProd_desc(rs.getString(4));
		pd.setProd_price(rs.getInt(5));
		pd.setProd_stock(rs.getInt(6));
		return pd;
	}
}