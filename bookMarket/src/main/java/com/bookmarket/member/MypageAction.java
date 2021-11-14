package com.bookmarket.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookmarket.dao.MemberDao;
import com.bookmarket.dto.KakaoMemberDto;
import com.bookmarket.dto.member.MemberDto;
import com.bookmarket.util.Action;
import com.bookmarket.util.ActionForward;

public class MypageAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session=request.getSession();
		int currentNum=(Integer)session.getAttribute("currentNum");
		String currentId=(String)session.getAttribute("currentId");
		String subId=currentId.substring(currentId.length()-2,currentId.length());
		MemberDao dao=MemberDao.getInstance();			
		
		if(subId.equals("@k")) {
			KakaoMemberDto dto=new KakaoMemberDto();
			dto=dao.kakaoInfo(currentId);
			request.setAttribute("memberDto", dto);
		}else {
			MemberDto dto=new MemberDto();
			dto=dao.myPage(currentNum);
			request.setAttribute("memberDto", dto);
		}
		
		
		
		ActionForward actionForward=new ActionForward();
		actionForward.setNextPath("/mypage/myPageView.jsp");
		actionForward.setRedirect(false);
		
		return actionForward;
	}
}
