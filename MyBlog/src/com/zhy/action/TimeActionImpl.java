package com.zhy.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhy.model.Time;
import com.zhy.service.TimeService;
import com.zhy.util.ActionUtil;

public class TimeActionImpl extends ActionSupport implements TimeAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TimeService timeService;
	
	public TimeService getTimeService() {
		return timeService;
	}

	public void setTimeService(TimeService timeService) {
		this.timeService = timeService;
	}


	@Override
	public String index() {
		List<Time> timeList = timeService.find();
		ActionContext.getContext().getApplication().put("timeList", timeList);
		ActionContext.getContext().put("url", "/time/time.jsp");
		return ActionUtil.SUCCESS;
	}

}
