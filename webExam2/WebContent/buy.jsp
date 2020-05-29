<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>buy</title>
<link rel="stylesheet" type="text/css" href="buy.css">
</head>
<body>
	<h2>購入ページ</h2>
	<form action="BuyServlet" method="post">
		<table border="1">
			<tr>
				<th>商品id</th><th>商品コード</th><th>商品名</th>
			</tr>
			<tr>
				<td>${item.id}</td><td>${item.code}</td><td>${item.name}</td>
			</tr>
		</table>
		<p>上記を購入します</p>
		<p>よろしいですか？</p>
		<button class="yes" name="btn" value="yes">はい</button>
		<button class="no" name="btn" value="no">いいえ</button>
		<input type="hidden" name="code" value="${item.code}">
	</form>
</body>
</html>