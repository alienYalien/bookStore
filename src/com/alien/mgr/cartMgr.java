package com.alien.mgr;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.alien.dao.cartDao;
import com.alien.model.cart;
import com.alien.model.goods;
import com.alien.model.page;
import com.alien.model.type;
import com.alien.utils.dbUtil;

public class cartMgr {
	private cartDao cDao =new cartDao(); 
	
	//获取购物车列表
	public List<cart> selectAll(int userid){
		List<cart> list=null;
		try {
			list=cDao.selectAll(userid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//获取购物车列表分页
	public page getCartPage(int userid,int pageNo) {

		page p=new page();//新建一个分页对象
		
		p.setPageNo(pageNo);//设置第几页
		int pageSize=9;//每页总个数
		int totalCount=0;//总数
		try {
			totalCount=cDao.getCartCount(userid);//通过cartDao中的函数 查询该类型的总数
		} catch (SQLException e) {
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(pageSize, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
			list=cDao.getCartPage(userid,pageNo, pageSize); //查询数据 根据类型id ，页码。 返回该页的集合

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
	}

	//加入购物车
	public boolean add(int goodsid, int userid) {
		cart c=null;
		try {
			//判断是否首次加入购物车
			c = cDao.isAddCart(goodsid,userid);
			if(c!=null){
				update(c.getId(),0);
			}else{
				c = new cart();
				c.setGoodsid(goodsid);
				c.setUserid(userid);
				c.setAmount(1);
				cDao.insert(c);
			}
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}		
	
	//购物车商品-增加/减少
	public boolean update(int cartid,int carttype) {
		try {
			cart c=cDao.selectById(cartid);
			if(null==c) {
				return false;
			}
			int amount=c.getAmount();
			if(carttype==0){
				amount=amount+1;
			}
			if(carttype==1){
				amount=amount-1;
			}
			cDao.update(amount,cartid);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}	
		
	//购物车商品-删除
	public boolean delete(int cartid) {
		try {
			cDao.delete(cartid);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	//计算总价格
	public float calAllPrice(int userid){
		float all=0;
		List<cart> list=null;
		try {
			list=cDao.selectAll(userid);
			for(int i=0;i<list.size();i++){
				int goodsid =list.get(i).getGoodsid();
				int amount =list.get(i).getAmount();
				float p1 = cDao.getPriceById(goodsid);
				float p2 = amount * p1;
				all=all+p2;
			}
			return all;
		} catch (SQLException e) {
			e.printStackTrace();
			return all;
		}
	}
	//计算总数量
	public int calAllAmount(int userid){
		int all=0;
		List<cart> list=null;
		try {
			list=cDao.selectAll(userid);
			for(int i=0;i<list.size();i++){
				int amount =list.get(i).getAmount();
				all=all+amount;
			}
			return all;
		} catch (SQLException e) {
			e.printStackTrace();
			return all;
		}
	}
}

