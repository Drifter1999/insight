<%@ page import="dao.InsightDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="dto.ProductDTO" %>
<%@ page import="com.google.gson.Gson" %><%--
  Created by IntelliJ IDEA.
  User: Sang Gi
  Date: 2023-04-06
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String cname = request.getParameter("productcategoryname");

    InsightDAO dao = new InsightDAO();

    List<ProductDTO> arr = dao.OneCategory(cname);
    String json = new Gson().toJson(arr);

    out.print(json);
%>
