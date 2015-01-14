package com.innominds.validate;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.innominds.model.Login;
import com.innominds.model.Quantity;

public class QuantityValidator implements Validator {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public boolean supports(Class clazz) {
		return Quantity.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {

		Quantity q = (Quantity) obj;

		if (q.getQuantity() == 0) {
			errors.rejectValue("quantity", "required.quantity");
		}
	}
}