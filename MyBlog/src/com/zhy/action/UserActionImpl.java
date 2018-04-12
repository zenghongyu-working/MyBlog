package com.zhy.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zhy.model.User;
import com.zhy.service.UserService;
import com.zhy.util.ActionUtil;

public class UserActionImpl extends ActionSupport implements UserAction,
		ServletRequestAware, ServletResponseAware, ModelDriven<User> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
	private User user;
	private HttpServletResponse response;
	private HttpServletRequest request;
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public String login() {
		if (userService.login(user)) {
			ActionContext.getContext().getSession()
					.put("username", user.getUsername());
			ActionContext.getContext().put("url", "blog_index");
			return ActionUtil.REDIRECT_ACTION;
		}
		try {
			ActionContext.getContext().put(
					"url",
					"blog_index?loginError="
							+ URLEncoder.encode("用户名或密码错误", "utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return ActionUtil.REDIRECT_ACTION;
	}

	@Override
	public String add() {
		if (userService.add(user)) {
			ActionContext.getContext().getSession()
					.put("username", user.getUsername());
			ActionContext.getContext().put("url", "blog_index");
			return ActionUtil.REDIRECT_ACTION;
		} else {
			try {
				ActionContext.getContext().put(
						"url",
						"user_registerInput?registerError="
								+ URLEncoder.encode("此用户名已被占用", "utf-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			return ActionUtil.REDIRECT_ACTION;
		}

	}

	@Override
	public User getModel() {
		if (user == null) {
			user = new User();
		}
		return user;
	}

	@Override
	public String logout() {
		ActionContext.getContext().getSession().remove("username");
		ActionContext.getContext().put("url", "blog_index");
		return ActionUtil.REDIRECT_ACTION;
	}

	@Override
	public String registerInput() {
		ActionContext.getContext().put("url", "register.jsp");
		return ActionUtil.SUCCESS;
	}

	@Override
	public String checkUsername() {
		PrintWriter writer = null;
		try {
			String json = "{\"success\":true,\"msg\":";
			response.setCharacterEncoding("utf-8");
			writer = response.getWriter();
			String username = request.getParameter("username");
			if (userService.isUniqueUser(new User(username, ""))){
				json += "\"该用户名可以使用\"";
			}else{
				json += "\"该用户名已被占用\"";
			}
			json += "}";
			writer.print(json);
			writer.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			writer.close();
		}
		return null;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
