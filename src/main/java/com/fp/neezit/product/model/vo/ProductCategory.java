package com.fp.neezit.product.model.vo;

public class ProductCategory {
	
	private String cateName;	// 카테고리명
	private String cateCode;	// 카테고리 코드
	private String cateCodeRef;	// 카테고리 부모 코드
	private int level;			// 카테고리 1분류, 2분류, 3분류
	
	public String getCateName() {
		return cateName;
	}
	
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	
	public String getCateCode() {
		return cateCode;
	}
	
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	
	public String getCateCodeRef() {
		return cateCodeRef;
	}
	
	public void setCateCodeRef(String cateCodeRef) {
		this.cateCodeRef = cateCodeRef;
	}
	
	public int getLevel() {
		return level;
	}
	
	public void setLevel(int level) {
		this.level = level;
	}
	
	@Override
	public String toString() {
		return "ProductCategory [cateName=" + cateName + ", cateCode=" + cateCode + ", cateCodeRef=" + cateCodeRef
				+ ", level=" + level + "]";
	}
}
