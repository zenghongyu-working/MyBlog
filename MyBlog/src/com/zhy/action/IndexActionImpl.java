package com.zhy.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhy.util.ActionUtil;

public class IndexActionImpl extends ActionSupport implements IndexAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String index(){
		ActionContext.getContext().put("url", "/index/index.jsp");
		return ActionUtil.SUCCESS;
	}

}
