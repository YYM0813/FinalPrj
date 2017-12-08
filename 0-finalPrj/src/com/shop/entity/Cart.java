package com.shop.entity;

import java.util.HashMap;
import java.util.Map;
public class Cart {
	
	public Map<Integer,CartItem> container = new HashMap<Integer,CartItem>();
	
	public void AddCart(Product pro,Size size,Flavor flavor){
		if(container.containsKey(pro.getId())){
			CartItem ci = container.get(pro.getId());
			if(ci.getFlavor().getName().equals(flavor)&&ci.getSize().getName().equals(size)){
				ci.setCount(ci.getCount()+1);	
			}else{
				CartItem ci1 = new CartItem();
				ci1.setProduct(pro);
				ci1.setCount(1);
				ci1.setFlavor(flavor);
				ci1.setSize(size);
				container.put(pro.getId()+100, ci1);
			}					
		}else{
			CartItem ci = new CartItem();
			ci.setProduct(pro);
			ci.setCount(1);
			ci.setFlavor(flavor);
			ci.setSize(size);
			container.put(pro.getId(), ci);
		}
	}
	
}
