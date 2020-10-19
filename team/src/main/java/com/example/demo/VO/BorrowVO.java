package com.example.demo.VO;

import java.sql.Date;

public class BorrowVO {
	
	private int bor_no;
	private Date bor_date;
	private Date return_date;
	private String return_ok;
	private int cust_no;
	private int b_no;
	
	public BorrowVO() {
		super();
	}

	public BorrowVO(int bor_no, Date bor_date, Date return_date, String return_ok, int cust_no, int b_no) {
		super();
		this.bor_no = bor_no;
		this.bor_date = bor_date;
		this.return_date = return_date;
		this.return_ok = return_ok;
		this.cust_no = cust_no;
		this.b_no = b_no;
	}

	public int getBor_no() {
		return bor_no;
	}

	public void setBor_no(int bor_no) {
		this.bor_no = bor_no;
	}

	public Date getBor_date() {
		return bor_date;
	}

	public void setBor_date(Date bor_date) {
		this.bor_date = bor_date;
	}

	public Date getReturn_date() {
		return return_date;
	}

	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}

	public String getReturn_ok() {
		return return_ok;
	}

	public void setReturn_ok(String return_ok) {
		this.return_ok = return_ok;
	}

	public int getCust_no() {
		return cust_no;
	}

	public void setCust_no(int cust_no) {
		this.cust_no = cust_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
}