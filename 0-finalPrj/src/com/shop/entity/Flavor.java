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
@Table(name="flavor")
public class Flavor {
	private int id;//口味类型id
	private String name;//口味名称
	private Set<Product> map=new HashSet<Product>();//商品集合
	
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
	@ManyToMany(mappedBy="flavor",cascade=CascadeType.ALL)
	public Set<Product> getMap() {
		return map;
	}
	public void setMap(Set<Product> map) {
		this.map = map;
	}
	
	
}
