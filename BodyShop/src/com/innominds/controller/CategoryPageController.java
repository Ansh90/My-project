package com.innominds.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.innominds.model.ProductDetail;
import com.innominds.model.Quantity;
import com.innominds.serviceLayer.CategoryService;
import com.innominds.validate.QuantityValidator;

@Controller
@SessionAttributes({ "stock", "price", "pname", "pid" })
@RequestMapping(value = "/cat")
public class CategoryPageController {
	List list = new ArrayList();
	@Autowired
	private CategoryService cs;

	public String showCategoryPage() {
		return "product";
	}

	@RequestMapping(value = "/{categoryId}", method = RequestMethod.GET)
	public String showCategory(@PathVariable("categoryId") int categoryId,
			ModelMap model) {

		List list = cs.showCategoryService(categoryId);
		model.addAttribute("list", list);
		return "category";
	}

	@RequestMapping(value = "/subcat/{scategoryId}", method = RequestMethod.GET)
	public String showSubCategory(@PathVariable("scategoryId") int scategoryId,
			ModelMap model, HttpSession session) {

		List list = cs.showSubCategoryService(scategoryId);
		System.out.println(list);
		model.addAttribute("list", list);
		return "subbody";
	}

	@RequestMapping(value = "/subcat/prod/{prodId}", method = RequestMethod.GET)
	public String showProduct(@PathVariable("prodId") int proId, Model model,
			HttpSession session) {

		model.addAttribute("quant", new Quantity());

		Object obj = cs.showProductsService(proId);
		ProductDetail sd = (ProductDetail) obj;
		session.setAttribute("productdetail", sd);
		ArrayList arrList = new ArrayList();
		arrList.add(sd);

		model.addAttribute("price", sd.getProd_price());
		model.addAttribute("stock", sd.getProd_stock());
		model.addAttribute("pname", sd.getProd_name());
		model.addAttribute("pid", sd.getProd_id());
		model.addAttribute("list1", arrList);
		//List list = new ArrayList();
		list.add(sd);
		// session.setAttribute("list1", list);
		System.out.println("THE PRODUCTS ARE::" + list);
		return "products1";
	}
}