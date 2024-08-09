<%--
  Created by IntelliJ IDEA.
  User: Abyssun2004
  Date: 2024/5/9
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>电子商务21-1_2111101060_孙泊宁</title>
</head>
<body>
<h2>计算三角形面积</h2>
<form action="" method="post">
    请输入三角形的三条边长：<br>
    边1：<input type="text" name="side1"><br>
    边2：<input type="text" name="side2"><br>
    边3：<input type="text" name="side3"><br>
    <input type="submit" value="计算">
</form>

<%
    if (request.getMethod().equals("POST")) {
        String side1Str = request.getParameter("side1");
        String side2Str = request.getParameter("side2");
        String side3Str = request.getParameter("side3");

        double side1 = 0, side2 = 0, side3 = 0;

        try {
            side1 = Double.parseDouble(side1Str);
            side2 = Double.parseDouble(side2Str);
            side3 = Double.parseDouble(side3Str);
        } catch (NumberFormatException e) {
            // 输入非数字，给出提示信息
            out.println("<p style=\"color:red;\">请输入有效的数字！</p>");
            return;
        }

        // 检查输入是否构成三角形
        if (!(side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)) {
            out.println("<p style=\"color:red;\">输入的边长无法构成三角形！</p>");
            return;
        }

        // 计算三角形的半周长
        double s = (side1 + side2 + side3) / 2;
        // 计算三角形的面积
        double area = Math.sqrt(s * (s - side1) * (s - side2) * (s - side3));

        out.println("<p>三角形的面积为：" + String.format("%.2f", area) + "</p>");
    }
%>
</body>
</html>
