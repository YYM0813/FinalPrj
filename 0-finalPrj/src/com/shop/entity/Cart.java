package com.shop.entity;

import java.util.HashMap;
import java.util.Map;
public class Cart {
	
	public Map<Integer,CartItem> container = new HashMap<Integer,CartItem>();
	
	public void AddCart(Product pro,Size size,Flavor flavor,int count){
		if(container.containsKey(pro.getId())){
			CartItem ci = container.get(pro.getId());
			int num= ci.getCount();
			ci.setCount(num+1);
		}else{
			CartItem ci = new CartItem();
			ci.setProduct(pro);
			ci.setCount(count);
			ci.setFlavor(flavor);
			ci.setSize(size);
			ci.setState("待发货");
			container.put(pro.getId(), ci);
		}
	}
	
}
