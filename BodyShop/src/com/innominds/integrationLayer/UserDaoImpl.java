package com.innominds.integrationLayer;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.innominds.model.Register;

public class UserDaoImpl implements UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public String registerUserDao(Object obj) {
		Register register = (Register) obj;

		try {
			String sql = "INSERT INTO registration(fname,lname,uname,pass,dob,street,city,state,country,mob,enabled) values(?,?,?,?,?,?,?,?,?,?,?)";
			jdbcTemplate.update(
					sql,
					new Object[] { register.getFirstName(),
							register.getLastName(), register.getUserName(),
							register.getPassword(), register.getDob(),
							register.getStreet(), register.getCity(),
							register.getState(), register.getCountry(),
							register.getMob(), 1 });

			String sql1 = "INSERT INTO user_roles(user_id,authority) values(?,?)";
			jdbcTemplate.update(sql1, new Object[] { register.getUserName(),
					"ROLE_USER" });
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return null;

	}

	@Override
	public String verifyUserDao(String uname, String pass) {
		String query = "select * from registration where uname=? and pass=?";

		SqlRowSet rs = jdbcTemplate.queryForRowSet(query, new Object[] { uname,
				pass });

		if (rs.next()) {

			return "data";
		}
		return null;

	}

	@Override
	public Map ShowProfileDao(String uname, String pass) {
		String query = "select * from registration where uname=? and pass=?";

		Map map = jdbcTemplate.queryForMap(query, new Object[] { uname, pass });

		return map;
	}
/*
 * Here request comes only update.jsp--> /update-->(non-Javadoc)
 * @see com.innominds.integrationLayer.UserDao#editProfileDao(java.lang.Object)
 */
	@Override
	public String updateProfileDao(Object obj) {
		Register register = (Register) obj;
		String query = "Update registration Set fname=?,lname=?,pass=?,dob=?,street=?,city=?,state=?,country=?,mob=? WHERE uname=?";
		
			jdbcTemplate.update(
					query,
					new Object[] { register.getFirstName(),
							register.getLastName(), register.getPassword(),
							register.getDob(), register.getStreet(),
							register.getCity(), register.getState(),
							register.getCountry(), register.getMob(),
							register.getUserName() });
		return "data";
	}
}
