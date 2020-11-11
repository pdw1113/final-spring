package com.fp.neezit.manager.model.vo;

import java.sql.Date;

public class Forbidden {

		String fword;
		Date fdate;
		 
		public Forbidden() {
			super();
		}

		public Forbidden(String fword, Date fdate) {
			super();
			this.fword = fword;
			this.fdate = fdate;
		}

		public String getFword() {
			return fword;
		}

		public void setFword(String fword) {
			this.fword = fword;
		}

		public Date getFdate() {
			return fdate;
		}

		public void setFdate(Date fdate) {
			this.fdate = fdate;
		}

		@Override
		public String toString() {
			return "Forbidden [fword=" + fword + ", fdate=" + fdate + "]";
		}
		
		
		
}
