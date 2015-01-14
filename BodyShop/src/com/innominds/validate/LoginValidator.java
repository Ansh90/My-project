package com.innominds.validate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.ValidationUtils;

import com.innominds.model.Login;

public class LoginValidator implements Validator {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public boolean supports(Class clazz) {
		return Login.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {

		Login login = (Login) obj;

		if (login.getUserName() == null || login.getUserName().length() == 0) {
			errors.rejectValue("userName", "required.userName");
		}

		if (login.getPassword() == null || login.getPassword().length() == 0) {
			errors.rejectValue("password", "required.password");
		}
		String name = null;
		String pass = null;
		SqlRowSet rs = jdbcTemplate
				.queryForRowSet("select uname,pass from registration");
		while (rs.next()) {
			name = rs.getString(1);
			pass = rs.getString(2);
		}
		if (!(login.getUserName().equals(name) && login.getPassword().equals(
				pass))) {
			errors.rejectValue("userName", "required.pass");
		}
	}
}