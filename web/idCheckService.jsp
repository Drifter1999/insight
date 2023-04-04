<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.InsightDAO" %><%--
  Created by IntelliJ IDEA.
  User: Sang Gi
  Date: 2023-04-04
  Time: 오전 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String userid = request.getParameter("userid");
%>

<%
    InsightDAO dao = new InsightDAO();
    String result = "";
    if (dao.UserCheck(userid)) {
        result="사용 불가능한 아이디입니다.";
    }else {
        result="사용 가능한 아이디입니다.";
    }
    out.print(result);
%>