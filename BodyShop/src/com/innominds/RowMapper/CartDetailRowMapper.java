package com.innominds.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.innominds.model.CartDetail;
import com.innominds.model.ProductDetail;

public class CartDetailRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int i) throws SQLException {

		CartDetail pd = new CartDetail();
		pd.setSession_id(rs.getString(1));
		pd.setProd_id(rs.getInt(2));
		pd.setProd_name(rs.getString(3));
		pd.setProd_price(rs.getInt(4));
		pd.setQuantity(rs.getInt(5));
		pd.setTot_price(rs.getInt(6));
		
		return pd;
	}
}