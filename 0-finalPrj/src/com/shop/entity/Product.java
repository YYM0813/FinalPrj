package com.shop.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product implements Serializable{
	private Integer id;
	private String name;
	private String englishname;
	private double price;
	private String discription;
	private String img1;
	private String img2;
	private String img3;
	private String disImg;
	private ProductType producttype;
	private Set<Flavor> flavor = new HashSet<Flavor>();
	private Set<Size> size = new HashSet<Size>();
	
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
	public String getEnglishname() {
		return englishname;
	}
	public void setEnglishname(String englishname) {
		this.englishname = englishname;
	}	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@ManyToOne
	@JoinColumn(name="typeid")
	public ProductType getProducttype() {
		return producttype;
	}
	public void setProducttype(ProductType producttype) {
		this.producttype = producttype;
	}
	
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getDisImg() {
		return disImg;
	}
	public void setDisImg(String disImg) {
		this.disImg = disImg;
	}
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="productflavor", 
	    joinColumns=@JoinColumn(name="productid"),
	    inverseJoinColumns=@JoinColumn(name="flavorid"))
	public Set<Flavor> getFlavor() {
		return flavor;
	}
	public void setFlavor(Set<Flavor> flavor) {
		this.flavor = flavor;
	}
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="productsize", 
	    joinColumns=@JoinColumn(name="productid"),
	    inverseJoinColumns=@JoinColumn(name="sizeid"))
	public Set<Size> getSize() {
		return size;
	}
	public void setSize(Set<Size> size) {
		this.size = size;
	}
}
