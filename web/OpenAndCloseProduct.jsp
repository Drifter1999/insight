<%@ page import="dao.InsightDAO" %><%--
  Created by IntelliJ IDEA.
  User: Sang Gi
  Date: 2023-04-07
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String userid = request.getParameter("userid");
  String productnum = request.getParameter("productnum");
  String state = request.getParameter("state");
  String str = "";
  InsightDAO dao = new InsightDAO();
  if (dao.updateProductState(userid, productnum, state)){
    str = (state.equals("Y")) ? "판매시작":"판매종료";
  }else {
    str = "판매 수정 실패";
  }

  out.print(str);

%>
