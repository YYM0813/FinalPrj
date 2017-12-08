package com.shop.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cartitem")
public class CartItem{
	private int id;
	private Product product;
	private int count;
	private Flavor flavor;
	private Size size;
	
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
	@OneToOne
	@JoinColumn(name = "flavorid")
	public Flavor getFlavor() {
		return flavor;
	}
	public void setFlavor(Flavor flavor) {
		this.flavor = flavor;
	}
	@OneToOne
	@JoinColumn(name = "sizeid")
	public Size getSize() {
		return size;
	}
	public void setSize(Size size) {
		this.size = size;
	}
	
}
