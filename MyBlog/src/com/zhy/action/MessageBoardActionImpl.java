package com.zhy.action;

import java.util.Date;

import org.apache.struts2.interceptor.validation.SkipValidation;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhy.model.MessageBoard;
import com.zhy.service.MessageBoardService;
import com.zhy.util.ActionUtil;

public class MessageBoardActionImpl extends ActionSupport implements
		MessageBoardAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String uniqueId;
	public String getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
	}

	private String textArea = "";

	public String getTextArea() {
		return textArea;
	}

	public void setTextArea(String textArea) {
		this.textArea = textArea;
	}

	private MessageBoardService messageBoardService;

	public MessageBoardService getMessageBoardService() {
		return messageBoardService;
	}

	public void setMessageBoardService(MessageBoardService messageBoardService) {
		this.messageBoardService = messageBoardService;
	}

	@Override
	@SkipValidation
	public String index() {
		ActionContext.getContext().put("url", "/more/more.jsp");
		return ActionUtil.SUCCESS;
	}

	@Override
	public String saveInput() {
		System.out.println(uniqueId
				+ " " + ActionContext.getContext().getSession().get("uniqueIdTime"));
		if (!uniqueId.equals(ActionContext.getContext().getSession().get("uniqueIdTime"))){
			ActionContext.getContext().getSession().put("isRepeat", "yes");
		}else{
			MessageBoard messageBoard = new MessageBoard(textArea, new Date());
			messageBoardService.add(messageBoard);
			ActionContext.getContext().getApplication().put("isSave", "yse");
		}
		ActionContext.getContext().getSession().remove("uniqueIdTime");
		ActionContext.getContext().put("url", "/more/more.jsp");
		return ActionUtil.SUCCESS;
	}

}
