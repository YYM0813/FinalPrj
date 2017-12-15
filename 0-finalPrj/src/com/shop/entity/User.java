package com.shop.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User implements Serializable{
	private Integer id;
	private String name;
	private String email;
	private String sex;
	private String password;
	private String role;
	private String discription;
	private Set<Address> addressmap = new HashSet<Address>();
	private Set<Order> orderset = new HashSet<Order>();
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)  
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@OneToMany(mappedBy="id", targetEntity=Address.class,cascade=CascadeType.ALL)
	public Set<Address> getAddressmap() {
		return addressmap;
	}
	public void setAddressmap(Set<Address> addressmap) {
		this.addressmap = addressmap;
	}
	@OneToMany(mappedBy="id", targetEntity=Order.class,cascade=CascadeType.ALL)
	public Set<Order> getOrderset() {
		return orderset;
	}
	public void setOrderset(Set<Order> orderset) {
		this.orderset = orderset;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}	
}
