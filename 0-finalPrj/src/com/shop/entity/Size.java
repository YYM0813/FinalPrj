package com.shop.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="size")
public class Size {
	private int id;
	private String name;
	public Set<Product> set = new HashSet<Product>();
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToMany(mappedBy="size",cascade=CascadeType.ALL)
	public Set<Product> getSet() {
		return set;
	}
	public void setSet(Set<Product> set) {
		this.set = set;
	}
	
	
}
