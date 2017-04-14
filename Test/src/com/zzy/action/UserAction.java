package com.zzy.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.google.gson.Gson;
import com.opensymphony.xwork2.Action;
import com.zzy.pojo.User;
import com.zzy.service.UserService;

@Controller("userAction")
@Scope("prototype")
public class UserAction {
	@Resource
	private UserService userService;
	private List<User> ulist;
	private User user;
	private Integer uno;
	private List<String> userList = new ArrayList();
	
	public List<String> getUserList() {
		return userList;
	}
	public void setUserList(List<String> userList) {
		this.userList = userList;
	}
	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	/**跳转到查询页面**/
	public String toSearch(){
		System.out.println("asdfasdf");
		userList.add("banana");
		userList.add("apple");
		userList.add("tree");
		
		return Action.SUCCESS;
	}
	/**跳转到新增页面**/
	public String toNew(){
		return "tonew";
	}
	/**新增**/
	public String addNew(){
		System.out.println("UserAction.addNew()");
		userService.addUserService(user);
		return Action.SUCCESS;
	}
	/**查询所有**/
	public String findAll() throws IOException{
		System.out.println("UserAction.findAll()");
		ulist = userService.selectUserListService();
		HttpServletResponse response = ServletActionContext.getResponse();
	    response.setContentType("text/html;charset=utf-8");
		Gson gson = new Gson();
		String json = gson.toJson(ulist);
		response.getWriter().write(json);
		return null;
	}
	/**查看详情页面**/
	public String toDetail(){
		
		user = userService.selectUserByUno(uno);
		
		return "detail";
	}
//	public static void main(String[] args){
//		Scanner input=new Scanner(System.in);
//		int [] array=new int [5];//声明并分配空间
//		System.out.println("请输入"+array.length+"个数:");
//		for (int i = 0; i < array.length; i++) {
//			array[i]=input.nextInt();
//		}
//		//数组的遍历
//		for (int i = 0; i < array.length; i++) {
//			System.out.println(array[i]);
//		}
//		System.out.println("\n");
//		//逆向遍历
//		for (int i =array.length-1;i>=0;i--) {
//			System.out.println(array[i]);
//		}
//	}
}
