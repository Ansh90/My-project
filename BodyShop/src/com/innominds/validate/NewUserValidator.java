package com.innominds.validate;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.innominds.model.NewUser;
import com.innominds.model.Register;

public class NewUserValidator implements Validator {

	@Override
	public boolean supports(Class clazz) {
		return Register.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		NewUser nu = (NewUser) target;

		if (nu.getnUser() == null || nu.getnUser().length() == 0) {
			errors.rejectValue("nUser", "required.userName");
		}
		if (nu.getStreet() == null || nu.getStreet().length() == 0) {
			errors.rejectValue("street", "required.password");
		}
		if (nu.getCity() == null || (nu.getCity().length() == 0)) {
			errors.rejectValue("city", "required.dob");
		}

		if (nu.getState() == null || nu.getState().length() == 0) {
			errors.rejectValue("state", "required.state");
		}
		if (nu.getCountry() == null || nu.getCountry().length() == 0) {
			errors.rejectValue("country", "required.country");
		}
		if (nu.getMob() == null || nu.getMob().length() == 0) {
			errors.rejectValue("mob", "required.mob");
		}
		Pattern p = Pattern.compile("\\d{10}");
		Matcher m = p.matcher(nu.getMob());
		{
			if(!m.matches()){
				errors.rejectValue("mob", "required.mobdigits");
			
			}
		}

	}
}