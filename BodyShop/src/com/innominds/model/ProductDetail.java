package com.innominds.model;

import java.io.Serializable;

import org.springframework.context.annotation.Scope;

@Scope("session")
public class ProductDetail implements Serializable {
	private int prod_id;
	private String prod_name;
	private String prod_desc;
	private int prod_price;
	private int prod_stock;
	private int quantity;
	private int prod_tp;

	
	public int getProd_tp() {
		return prod_tp;
	}

	public void setProd_tp(int prod_tp) {
		this.prod_tp = prod_tp;
	}


	public int getProd_price() {
		return prod_price;
	}

	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}

	public int getProd_stock() {
		return prod_stock;
	}

	public void setProd_stock(int prod_stock) {
		this.prod_stock = prod_stock;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public String getProd_desc() {
		return prod_desc;
	}

	public void setProd_desc(String prod_desc) {
		this.prod_desc = prod_desc;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}