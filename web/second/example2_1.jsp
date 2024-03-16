<%--
  Created by IntelliJ IDEA.
  User: Abyssun2004
  Date: 2024/3/16
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.Calendar" pageEncoding="UTF-8" %>
<html>
<head>
    <title>2.1 JSP页面的基本结构</title>
</head>
<body>
<%! Calendar rightNow ;%>
<%rightNow = Calendar.getInstance();%>
<!--This is HTML content(客户端可以看到源代码)-->
<!-- 当前日期是：
    <%= rightNow.get(Calendar.YEAR)%>:<%= rightNow.get(Calendar.MONTH)+1%>:<%= rightNow.get(Calendar.DAY_OF_MONTH)%>
-->
<%--This is JSP content(客户端看不到源代码)--%>

</body>
</html>
