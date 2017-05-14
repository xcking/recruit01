package com.cx.action;

import com.cx.biz.AdminBiz;
import com.cx.entity.Admin;
import com.opensymphony.xwork2.ModelDriven;

public class AdminAction extends BaseAction implements ModelDriven<Admin> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin = new Admin();
	private AdminBiz adminBiz;
	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin;
	}
	public void setAdminBiz(AdminBiz adminBiz) {
		this.adminBiz = adminBiz;
	}
	public String toLoginAdmin(){
		return "toLoginAdmin";
	}
	public String doLoginAdmin(){
		Admin admin1 = adminBiz.loginAdmin(admin.getAdminaccount(), admin.getAdminpassword());
		if (admin != null) {
			session.setAttribute("admin", admin1);
			return "adminHomePage";
		}
		return "toLoginAdmin";
	}
}
