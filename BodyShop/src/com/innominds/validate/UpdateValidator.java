package com.innominds.validate;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.innominds.model.Register;

public class UpdateValidator  implements Validator{
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Register.class.equals(clazz);

	}

	@Override
	public void validate(Object target, Errors errors) {

		Register reg = (Register) target;

		if (reg.getFirstName() == null || reg.getFirstName().length() == 0) {
			errors.rejectValue("firstName", "required.firstName");
		}

		if (reg.getLastName() == null || reg.getLastName().length() == 0) {
			errors.rejectValue("lastName", "required.lastName");
		}

		if (reg.getUserName() == null || reg.getUserName().length() == 0) {
			errors.rejectValue("userName", "required.userName");
		}
		if (reg.getPassword() == null || reg.getPassword().length() == 0) {
			errors.rejectValue("password", "required.password");
		}
		if (reg.getDob() == null || reg.getDob().length() == 0) {
			errors.rejectValue("dob", "required.dob");
		}
		if (reg.getStreet() == null || reg.getStreet().length() == 0) {
			errors.rejectValue("street", "required.street");
		}
		if (reg.getCity() == null || reg.getCity().length() == 0) {
			errors.rejectValue("city", "required.city");
		}
		if (reg.getState() == null || reg.getState().length() == 0) {
			errors.rejectValue("state", "required.state");
		}
		if (reg.getCountry() == null || reg.getCountry().length() == 0) {
			errors.rejectValue("country", "required.country");
		}
		if (reg.getMob() == null || reg.getMob().length() == 0) {
			errors.rejectValue("mob", "required.mob");
		}
		
		Pattern p = Pattern.compile("\\d{10}");
		Matcher m = p.matcher(reg.getMob());
		{
			if(!m.matches()){
				errors.rejectValue("mob", "required.mobdigits");
			
			}
		}
	}
}
