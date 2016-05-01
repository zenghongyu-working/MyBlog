package com.zhy.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhy.model.Blog;
import com.zhy.model.MyPage;
import com.zhy.service.BlogService;
import com.zhy.util.ActionUtil;

public class BlogActionImpl extends ActionSupport implements BlogAction,
		ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BlogService blogService;
	private HttpServletRequest request;

	public BlogService getBlogService() {
		return blogService;
	}

	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}

	@Override
	public String index() {
		MyPage page = null;
		if (request.getParameter("currentPage") == null
				|| request.getParameter("currentPage").compareTo("0") <= 0)
			page = getPage(1);
		else {
			int totalPage = (int) Math.ceil((double) getTotalCount()
					/ MyPage.getPageSize());
			if (totalPage < Integer
					.valueOf(request.getParameter("currentPage")))
				page = getPage(totalPage);
			else
				page = getPage(Integer.valueOf(request
						.getParameter("currentPage")));
		}
		// ActionContext.getContext().put("myPage", page);
		ActionContext.getContext().getSession().put("myPage", page);
		// List<Blog> blogList = blogService.find();
		// for (int i = 0; i < blogList.size(); i++) {
		// blogList.get(i).setContent(
		// blogList.get(i).getContent().replaceAll("\r\n", "<br>"));
		// }
		// ActionContext.getContext().put("blogList", blogList);
		ActionContext.getContext().put("url", "/blog/blog.jsp");
		// ActionContext.getContext().put("totalCount", getTotalCount());
		return ActionUtil.SUCCESS;
	}

	@Override
	public String readBlog() {
		Blog blog = blogService.get(request.getParameter("id"));
		ActionContext.getContext().put("blog", blog);
		ActionContext.getContext().put("url", "/blog/readBlog.jsp");
		return ActionUtil.SUCCESS;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public long getTotalCount() {
		return blogService.getTotalCount();
	}

	@Override
	public MyPage getPage(int currentPage) {
		MyPage page = new MyPage(currentPage, getTotalCount(), null);
		int count = MyPage.getPageSize();
		int begin = (currentPage - 1) * MyPage.getPageSize();
		List<Blog> list = blogService.findPage(begin, count);
		page.setList(list);
		return page;
	}
}
