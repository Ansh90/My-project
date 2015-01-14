package com.innominds.serviceLayer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.innominds.integrationLayer.UserDao;
import com.innominds.validate.RegisterValidator;

public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao ud;

	@Autowired
	RegisterValidator registerValidator;

	public void setRegisterValidator(RegisterValidator registerValidator) {
		this.registerValidator = registerValidator;
	}

	@Override
	public String registerUser(Object obj) {

		ud.registerUserDao(obj);
		return null;
	}

	@Override
	public String verifyUser(String uname, String pass) {
		String data = ud.verifyUserDao(uname, pass);
		return data;
	}

	@Override
	public List showProfileUser(String uname, String pass) {
		Map map = ud.ShowProfileDao(uname, pass);
		ArrayList list = new ArrayList();
		Set s = map.entrySet();
		Iterator iterator = s.iterator();
		while (iterator.hasNext()) {
			Map.Entry me = (Map.Entry) iterator.next();
			list.add(me.getValue());
		}
		return list;
	}

	@Override
	public String updateProfileUser(Object obj) {
		String data = ud.updateProfileDao(obj);
		return data;
	}
}