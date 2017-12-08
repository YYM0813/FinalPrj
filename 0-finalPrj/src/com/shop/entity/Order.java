package com.shop.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="torder")
public class Order {
	private int id;
	private User user;
	private Address address;
	private Set<CartItem> cartitem = new HashSet<CartItem>();
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@OneToOne
	@JoinColumn(name = "userid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	 @OneToOne
	 @JoinColumn(name = "addressid")
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	@OneToMany(mappedBy="id", targetEntity=CartItem.class,cascade=CascadeType.ALL)
	public Set<CartItem> getCartitem() {
		return cartitem;
	}
	public void setCartitem(Set<CartItem> cartitem) {
		this.cartitem = cartitem;
	}
	
	
}
