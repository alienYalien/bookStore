package com.alien.model;

public class orderItem {
	private int id;
	private float price;
	private int amount;
	private String goodsName;
	private goods goods;
	private order order;
	public int getId() {
		return id;
	}
	
	
	
	public String getGoodsName() {
		return goodsName;
	}



	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}



	public void setName(String name) {
		this.goodsName=name;
	}
	
	public orderItem(float price, int amount, goods goods, order order) {
		super();
		this.price = price;
		this.amount = amount;
		this.goods = goods;
		this.order = order;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public goods getGoods() {
		return goods;
	}
	public void setGoods(goods goods) {
		this.goods = goods;
	}
	public order getOrder() {
		return order;
	}
	public void setOrder(order order) {
		this.order = order;
	}
	public orderItem() {
		super();
	}
	
	

}