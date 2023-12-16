<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--    pageEncoding="UTF-8"%>--%>
<%--<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>--%>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<form:form modelAttribute="boardVO" action="../deleteok" method="POST">--%>
<%--	<form:hidden path="seq"/>--%>
<%--<%--%>

<%--	String sid = request.getParameter("id");--%>
<%--	if (sid != ""){  --%>
<%--		int id = Integer.parseInt(sid);--%>
<%--		BoardVO u = new BoardVO();--%>
<%--		u.setSeq(id);--%>
<%--		BoardDAO boardDAO = new BoardDAO();--%>
<%--		boardDAO.deleteBoard(u.getSeq());--%>
<%--	}--%>
<%--//	response.sendRedirect("posts.jsp");--%>
<%--%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.example.board.BoardDAO" %>
<%@ page import="java.io.IOException" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>

<%
	// 삭제할 게시물의 ID를 가져옴
	String seq;
	seq = request.getParameter("seq");

	// seq가 null이 아니고 비어있지 않은 경우에만 삭제 처리
	if (seq != null && !seq.isEmpty()) {
		try {
			// BoardDAO를 사용하여 해당 ID의 게시물 삭제
			BoardDAO boardDAO = new BoardDAO();
			boardDAO.deleteBoard(Integer.parseInt(seq));
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp"); // 에러 페이지로 이동
		}
	} else {
		response.sendRedirect("error.jsp"); // 에러 페이지로 이동
	}
%>

<!-- 삭제 처리 후 목록 페이지로 이동 -->
<%
	response.sendRedirect("boardlist.jsp");
%>