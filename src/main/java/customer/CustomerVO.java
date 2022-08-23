package customer;

import java.util.Date;

public class CustomerVO {
	
	private Integer cost, storeid;
	private String userid;
	private Date costdate;
	
	
	
	public Integer getStoreid() {
		return storeid;
	}
	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Integer getCost() {
		return cost;
	}
	public void setCost(Integer cost) {
		this.cost = cost;
	}

	public Date getCostdate() {
		return costdate;
	}
	public void setCostdate(Date costdate) {
		this.costdate = costdate;
	}
	

}
