package com.shop.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cartitem")
public class CartItem implements Serializable{
	private int id;
	private Product product;
	private int count;
	private int pskuid;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="productid")
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPskuid() {
		return pskuid;
	}
	public void setPskuid(int pskuid) {
		this.pskuid = pskuid;
	}
	
}
