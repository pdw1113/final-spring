package com.fp.neezit.manager.model.vo;

public class Mcomfirm {
   private String nickname;
   private int masterId;
   private int masterSchool;
   private int masterQualification;
   
   public Mcomfirm() {
      super();
      // TODO Auto-generated constructor stub
   }
   public Mcomfirm(String nickname, int masterId, int masterSchool, int masterQualification) {
      super();
      this.nickname = nickname;
      this.masterId = masterId;
      this.masterSchool = masterSchool;
      this.masterQualification = masterQualification;
   }
   public String getNickname() {
      return nickname;
   }
   public void setNickname(String nickname) {
      this.nickname = nickname;
   }
   public int getMasterId() {
      return masterId;
   }
   public void setMasterId(int masterId) {
      this.masterId = masterId;
   }
   public int getMasterSchool() {
      return masterSchool;
   }
   public void setMasterSchool(int masterSchool) {
      this.masterSchool = masterSchool;
   }
   public int getMasterQualification() {
      return masterQualification;
   }
   public void setMasterQualification(int masterQualification) {
      this.masterQualification = masterQualification;
   }
   
   @Override
   public String toString() {
      return "Mcomfirm [nickname=" + nickname + ", masterId=" + masterId + ", masterSchool=" + masterSchool
            + ", masterQualification=" + masterQualification + "]";
   }
}