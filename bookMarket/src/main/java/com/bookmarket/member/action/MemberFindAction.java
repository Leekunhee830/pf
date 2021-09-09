package com.bookmarket.member.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookmarket.controller.Action;
import com.bookmarket.controller.ActionForward;
import com.bookmarket.dao.MemberDao;

public class MemberFindAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		MemberDao dao=MemberDao.getInstance();
		
		String user_email=request.getParameter("user_email");
		ArrayList<String> user_ids= dao.findId(user_email);
		request.setAttribute("find_id", user_ids);
		
		ActionForward actionForward=new ActionForward();
		actionForward.setNextPath("memberFindResult.jsp");
		actionForward.setRedirect(false);
		
		return actionForward;
	}

}
