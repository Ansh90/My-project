package com.innominds.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.innominds.model.Login;
import com.innominds.model.Register;
import com.innominds.serviceLayer.UserService;
import com.innominds.validate.LoginValidator;
import com.innominds.validate.RegisterValidator;
import com.innominds.validate.UpdateValidator;
@SessionAttributes({ "uName", "pass", "q", "pid" })
@Controller
public class AccountPageController {

	@Autowired
	RegisterValidator registerValidator;

	@Autowired
	UpdateValidator updateValidator;
/*
 * This Object is unnessesary i guess because login validation is done by springs.
 */
	@Autowired
	LoginValidator loginValidator;
	@Autowired
	private UserService us;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String showMain() {
		return "main";
	}
	@RequestMapping(value = "/returnhome", method = RequestMethod.GET)
	public String returnHome() {
		return "home";
	}

	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {

		model.addAttribute("error", "true");
		return "login";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String loginUser(ModelMap model, HttpSession session) {

		User user = (User) SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		String name = user.getUsername();
		String pass = user.getPassword();
		
		  Login log = new Login();
		  model.put("log", log);
		
		session.setAttribute("uName", name);
		session.setAttribute("pass", pass);
		model.addAttribute("uName", name);
		model.addAttribute("pass", pass);
		model.addAttribute("message",
				"Spring Security login + database example");
		return "home";

	}

	@RequestMapping(value = "/returnlogin", method = RequestMethod.GET)
	public String returnLogin(Map model) {
		Login log = new Login();
		model.put("log", log);
		return "login";
	}

	/* 
	 * log model object created in this method. So that register.jsp fill
	 * values of register object into that which can be used by /addUser mehtod.
*/
	@RequestMapping(value = "/register")
	public String register(Map model) {
		Register register = new Register();
		model.put("log", register);
		return "register";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("log") Register register,
			BindingResult result, ModelMap model, HttpSession session) {

		registerValidator.validate(register, result);
		session.setAttribute("reg", register);
		if (result.hasErrors()) {
			return "register";
		}
		String data = us.registerUser(register);
		String name = register.getUserName();
		model.addAttribute("uName", name);
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {

		return "login";
	}
/* @ModelAttribute/ ModelMap is object for one respose/request cycle.
 * As in this method i think @ModelAttribute is waste because i used 
 * session attributes to fetch username and password. Not the form data
 * traped in log as springs fill log object with form data(request param).
 * 
 * Further ModelMap is used to populate data from database which will be used by
 * profile.jsp
 */
	// request comes form home.jsp if selected view profile
	@RequestMapping(value = "/prof", method = RequestMethod.GET)
	public String showProfile(@ModelAttribute("log") Login login,
	ModelMap model, HttpSession session) {
		String uname = (String) session.getAttribute("uName");
		String pass = (String) session.getAttribute("pass");
		profileRelatedMethod(model, uname, pass);
		return "profile";
	}
/*This method first check log attribute in model.(which is only possible if this
 * controller have @ModelAttribute method. because at that time it will be stored
 * at class level or @ModelAttribute is set in @SessionAttribute) but as you can 
 * see that this is not in this case. Soooo Spring will create an Object in Model
 * of type Register and name it as "log". Then Spring will try to populate its
 * values from request parameters comes from form tag. Springs will populate only
 * thoes Register class variables having same name as request parameter names, given
 * in web form.
 * @ModelAttribute is also responsible to add annotated Object to the ModelMap
 * object which is further used view. If i mentioned a @SessionAttribute("log")
 * then @ModelAttribute will add its annotated log object to sessionAttribute.
 * 
 */
	
/*
 *
 */
/*	this method call comes form profile.jsp when click edit profile
	 request param has no register data because data the profile page 
	holds is not submiting.*/
	@RequestMapping(value = "/up", method = RequestMethod.GET)
	public String editProfile(@ModelAttribute("log") Register register,
			ModelMap model, HttpSession session){
		String uname = (String) session.getAttribute("uName");
		String pass = (String) session.getAttribute("pass");
		profileRelatedMethod(model, uname, pass);
		return "update";
	}
/* parameterized @ModelAttribute("log") is only here defines the name of the
 * model attribute with will be of Register type. this is not previous request/response
 * cycle "log" attribute. I think parameterized model attributes exist only in one cycle.
 * so this "log" attribute will be created and values are filled by 
 */
	/*
	 * this method request comes form update.jsp page when you enter
	 * from edit profile page. Update.jsp wil give the complete
	 * registration object through parameters.
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute("log") Register register,
			BindingResult result, ModelMap model) {

		updateValidator.validate(register, result);
		if (result.hasErrors()) {
			return "update";
		}
		String data = us.updateProfileUser(register);
		return "success";
	}
	public void profileRelatedMethod(ModelMap model, String uname, String pass) {
		List list = us.showProfileUser(uname, pass);
		/*
		 * This is absurd design, my recommendation is i would set the register
		 * object into model map and then pass to this method and instead
		 * creating so many attributes i will fill register object will this
		 * data and put register object into ModelMap object so that jsp or
		 * other components can use that data.
		 */
		model.addAttribute("fName", list.get(0));
		model.addAttribute("lName", list.get(1));
		model.addAttribute("uName", list.get(2));
		model.addAttribute("pass", list.get(3));
		model.addAttribute("dob", list.get(4));
		model.addAttribute("street", list.get(5));
		model.addAttribute("city", list.get(6));
		model.addAttribute("state", list.get(7));
		model.addAttribute("country", list.get(8));
		model.addAttribute("mob", list.get(9));
	}
}
