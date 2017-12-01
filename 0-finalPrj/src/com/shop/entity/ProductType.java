package com.shop.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="producttype")
public class ProductType implements Serializable{
	
	private Integer id;//商品类别id
	private String name;//商品类别名称
	private Set<Product> map=new HashSet<Product>();
	
	@Id
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
	@OneToMany(mappedBy="producttype", targetEntity=Product.class,cascade=CascadeType.ALL)
	public Set<Product> getMap() {
		return map;
	}
	public void setMap(Set<Product> map) {
		this.map = map;
	}
	
	
}
