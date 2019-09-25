package com.alien.model;

public class cart {
	private int id;
	private int userid;
	private int goodsid;
	private int amount;
	
	private float price;
	private String name;	
	private String image1;
	
	
	private float allprice;
	private int allamount;
	

	public int getId() {
		return id;
	}	
	public void setId(int id) {
		this.id = id;
	}	
	public int getUserid() {
		return userid;
	}	
	public void setUserid(int userid) {
		this.userid = userid;
	}	
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return image1;
	}
	public void setImg(String image1) {
		this.image1 = image1;
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


	public cart(int id, int userid, int goodsid, int amount, String name,float price,String image1) {
		super();
		this.id = id;
		this.userid = userid;
		this.goodsid = goodsid;
		this.amount = amount;
		

		this.name = name;
		this.price = price;
		this.image1 = image1;
	
	}
	public cart() {
		super();
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", userid=" + userid + ", goodsid=" + goodsid + ", amount=" + amount + ", name="
				+ name + ", price=" + price + ", image1=" + image1 + "]";
	}
	

	
	
	public float getAllPrice() {
	return allprice;
}
public void setAllPrice(float allprice) {
	this.allprice = allprice;
}
public int getAllAmount() {
	return allamount;
}
public void setAllAmount(int allamount) {
	this.allamount = allamount;
}
}