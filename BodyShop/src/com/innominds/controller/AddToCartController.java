package com.innominds.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import javax.servlet.http.HttpSession;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.innominds.model.NewUser;
import com.innominds.model.ProductDetail;
import com.innominds.model.Quantity;
import com.innominds.serviceLayer.AddCartService;
import com.innominds.validate.NewUserValidator;
import com.innominds.validate.QuantityValidator;

@Controller
@SessionAttributes({ "q", "tot_price", "nUser", "rInt", "uName" })
public class AddToCartController{

	List list = new ArrayList();
	@Autowired
	QuantityValidator quantityValidator;

	@Autowired
	NewUserValidator newUserValidator;

	@Autowired
	private AddCartService acs;

	@RequestMapping(value = "/cart/{prod_id}", method = RequestMethod.POST)
	public String addToCart(@ModelAttribute("quant") Quantity quantity,
			BindingResult result, Model model,
			@PathVariable("prod_id") int pId, HttpSession session) {
		quantityValidator.validate(quantity, result);
		int q = quantity.getQuantity();
		model.addAttribute("newUser", new NewUser());
		Object obj = acs.addToCartService(pId, q);
		ProductDetail pd = (ProductDetail) obj;
		ArrayList arrList = new ArrayList();
		arrList.add(pd);
		model.addAttribute("tp", session.getAttribute("tot_price"));
		model.addAttribute("q", q);
		model.addAttribute("quan", session.getAttribute("quan"));
		// quantity fied is filled with data coming from product detail pd object.
		BeanUtils.copyProperties(quantity, pd);
		list.add(pd);
		session.setAttribute("list", list);
		model.addAttribute("list1", arrList);
		if (result.hasErrors()) {
			System.out.println("ERROR PAGE");
			return "products1";
		}
		return "products2";
	}

	@RequestMapping(value = "/showCart", method = RequestMethod.GET)
	public String showCart(@ModelAttribute("quant") Quantity quantity,
			BindingResult result, Model model, HttpSession session) {

		System.out.println(" SHOW CART SESSION ID:   " + session.getId());

		try {
			List list = (List) session.getAttribute("list");
			Iterator iterator1 = list.iterator();
			// ArrayList list1 = new ArrayList();
			ProductDetail s1 = null;
			while (iterator1.hasNext()) {
				s1 = (ProductDetail) iterator1.next();
			}
			if (list.size() == 0) {
				return "nothingcart";
			}
		} catch (NullPointerException e) {
			throw e;

		}
		model.addAttribute("tp", session.getAttribute("tot_price"));
		// model.addAttribute("list", (List) session.getAttribute("list1"));
	
		return "cart";
	}

	@ExceptionHandler(NullPointerException.class)
	public String catchException(NullPointerException e) {
		return "nothingcart";

	}

	@RequestMapping(value = "/place1", method = RequestMethod.GET)
	public String orderPlaceEx(@ModelAttribute("newUser") NewUser user,
			BindingResult result, HttpSession session, Model model) {

		System.out.println("CART " + (String) session.getAttribute("uName"));
		User user1 = (User) SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		String name = user1.getUsername();
		String pass = user1.getPassword();

		model.addAttribute("uName", name);

		Vector v = new Vector();
		v.add(name);
		v.add((List) session.getAttribute("list"));
		List list1 = (List) session.getAttribute("list");
		Iterator iterator1 = list1.iterator();
		// ArrayList list1 = new ArrayList();
		ProductDetail s1 = null;
		int total = 0;
		while (iterator1.hasNext()) {
			s1 = (ProductDetail) iterator1.next();
			total = s1.getQuantity() * s1.getProd_price();
			System.out.println("TOTAL IS" + total);

			v.add(total);
		}
		long order_id = acs.orderPlaceServiceEx(v);

		model.addAttribute("rInt", order_id);
		System.out.println(order_id);
		List list2 = (List) session.getAttribute("list");
		Iterator iterator = list2.iterator();
		// ArrayList list1 = new ArrayList();
		ProductDetail s = null;
		while (iterator.hasNext()) {
			s = (ProductDetail) iterator.next();
			// int total=s.getQuantity()*s.getProd_price();
			int pid = s.getProd_id();
			System.out.println(s.getProd_stock());
			int n = s.getProd_stock();
			int q1 = s.getQuantity();
			if (n > q1) {
				n = n - q1;
			} else {
				n = n - n;
			}

			acs.orderPlace(n, pid);
		}

		list.removeAll(list);
		return "orderplace";
	}
}
