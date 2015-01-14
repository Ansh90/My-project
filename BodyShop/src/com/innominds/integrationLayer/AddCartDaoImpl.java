package com.innominds.integrationLayer;

import org.springframework.jdbc.core.*;
import org.springframework.jdbc.datasource.*;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Vector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import javax.sql.DataSource;

import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.innominds.RowMapper.ProductDetailRowMapper;
import com.innominds.model.NewUser;

public class AddCartDaoImpl implements AddCartDao, Serializable {
	Object object;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List addToCartDao(int pId) {
		List list = jdbcTemplate.query("select * from product where prod_id=?",
				new ProductDetailRowMapper(), pId);
		return list;

	}

	@Override
	public long orderPlaceDao(Object obj) {

		 object=obj;
		final String INSERT_SQL = "INSERT INTO placedorder(object_name, serialized_object) VALUES (?, ?)";
		
		KeyHolder keyHolder = new GeneratedKeyHolder();

		 jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(
					Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(INSERT_SQL,
						new String[] { "order_id" });
				ps.setString(1, object.getClass().getName());
				ps.setObject(2, object);
				return ps;
			}
		}, keyHolder);
		 Long l=(Long) keyHolder.getKey();
		return l;
		
	}

	public void orderPlaceDao1(String uName, int rInt, String pname,
			int pprice, int q, int tp) {
		jdbcTemplate.update("INSERT INTO innominds.order(order_id) values(?)",
				new Object[] { rInt });
		System.out.println("INTEGRATIOn LAYER NEW USER" + uName);

	}

	@Override
	public void updateStockDao(int n, int pid) {
		jdbcTemplate.update("update product set prod_stock=? where prod_id=?",
				new Object[] { n, pid });

	}

	@Override
	public Object addNewUserDao(Object obj) {
		NewUser nu = (NewUser) obj;
		try {
			String sql = "INSERT INTO registration(fname,lname,uname,pass,dob,street,city,state,country,mob) values(?,?,?,?,?,?,?,?,?,?)";
			jdbcTemplate.update(
					sql,
					new Object[] { "", "", nu.getnUser(), nu.getnUser(), "",
							nu.getStreet(), nu.getCity(), nu.getState(),
							nu.getCountry(), nu.getMob() });
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return nu;
	}

	@Override
	public String verifyUserAtCartDao(String uname) {
		String query = "select * from registration where uname=? ";

		SqlRowSet rs = jdbcTemplate.queryForRowSet(query,
				new Object[] { uname });

		if (rs.next()) {

			return rs.getString(3);
		}
		return null;

	}

	@Override
	public int exOrderDao(String uname) {
		String query = "select * from placedorder where user_id=? ";

		SqlRowSet rs = jdbcTemplate.queryForRowSet(query,
				new Object[] { uname });

		if (rs.next()) {

			return rs.getInt(2);
		}
		return 0;

	}

	@Override
	public void cartIdGenDao(String sessionId, int prod_id, String prod_name,
			int prod_price, int q, int tot_price) {
		jdbcTemplate
				.update("INSERT INTO cart(session_id,prod_id,prod_name,prod_price,quantity,tot_price) values(?,?,?,?,?,?)",
						new Object[] { sessionId, prod_id, prod_name,
								prod_price, q, tot_price });

	}

}
