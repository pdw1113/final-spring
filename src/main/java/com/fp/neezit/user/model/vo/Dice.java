package com.fp.neezit.user.model.vo;

import org.springframework.stereotype.Component;

// Controller에서 Autowired로 Bean등록 해주기 우히여 Component 어노테이션을 첨가한다.
@Component("diceObj")
public class Dice {
	
	private String dice;	// 랜덤 숫자
	private String btn;		// 버튼 클릭 확인

	public Dice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Dice(String dice, String btn) {
		super();
		this.dice = dice;
		this.btn = btn;
	}

	public String getDice() {
		return dice;
	}

	public void setDice(String dice) {
		this.dice = dice;
	}

	public String getBtn() {
		return btn;
	}

	public void setBtn(String btn) {
		this.btn = btn;
	}

	@Override
	public String toString() {
		return "Dice [dice=" + dice + ", btn=" + btn + "]";
	}

	

}
