package com.fp.neezit.user.model.vo;

public class Thanos {
	private String nickname;
	private String content;
	private String thanosPic;
	private String thanosPicRe;
	
	public Thanos() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Thanos(String nickname, String content, String thanosPic, String thanosPicRe) {
		super();
		this.nickname = nickname;
		this.content = content;
		this.thanosPic = thanosPic;
		this.thanosPicRe = thanosPicRe;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getThanosPic() {
		return thanosPic;
	}

	public void setThanosPic(String thanosPic) {
		this.thanosPic = thanosPic;
	}

	public String getThanosPicRe() {
		return thanosPicRe;
	}

	public void setThanosPicRe(String thanosPicRe) {
		this.thanosPicRe = thanosPicRe;
	}

	@Override
	public String toString() {
		return "Thanos [nickname=" + nickname + ", content=" + content + ", thanosPic=" + thanosPic + ", thanosPicRe="
				+ thanosPicRe + "]";
	}
	
	
}
