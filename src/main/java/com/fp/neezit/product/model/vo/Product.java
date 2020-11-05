package com.fp.neezit.product.model.vo;

import java.sql.Date;

public class Product {

	private String nickName;    // 별명    [외래키]
	private int no;             // 글번호
	private String title;       // 글제목
	private String pic; 		// 사진
	private String renamePic;	// 사진 저장 파일명
	private String category;    // 카테고리
	private int price;          // 가격
	private String career;      // 경력
	private String portfolio;   // 포트폴리오
	private String introduce;   // 자기소개
	private Date createDate;    // 생성날짜
	private Date modifyDate;    // 수정날짜
	private int count ;         // 조회수

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(String nickName, int no, String title, String pic, String renamePic, String category, int price,
			String career, String portfolio, String introduce, Date createDate, Date modifyDate, int count) {
		super();
		this.nickName = nickName;
		this.no = no;
		this.title = title;
		this.pic = pic;
		this.renamePic = renamePic;
		this.category = category;
		this.price = price;
		this.career = career;
		this.portfolio = portfolio;
		this.introduce = introduce;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.count = count;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getPortfolio() {
		return portfolio;
	}

	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public final String getRenamePic() {
		return renamePic;
	}

	public final void setRenamePic(String renamePic) {
		this.renamePic = renamePic;
	}

	@Override
	public String toString() {
		return "Product [nickName=" + nickName + ", no=" + no + ", title=" + title + ", pic=" + pic + ", renamePic="
				+ renamePic + ", category=" + category + ", price=" + price + ", career=" + career + ", portfolio="
				+ portfolio + ", introduce=" + introduce + ", createDate=" + createDate + ", modifyDate=" + modifyDate
				+ ", count=" + count + "]";
	}

}