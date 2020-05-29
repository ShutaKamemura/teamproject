<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>stock</title>
<link rel="stylesheet" type="text/css" href="stock.css">
</head>
<body>
	<h2>在庫補充ページ</h2>
	<form action="StockServlet" method="post">
		<table border="1">
			<tr>
				<th>補充</th><td><input type="text" name="stock" value="${item.stock}"></td>
			</tr>
		</table>
		<p>上記で補充します</p>
		<p>よろしいですか？</p>
		<button class="yes" name="btn" value="yes">はい</button>
		<button class="no" name="btn" value="no">いいえ</button>
		<input type="hidden" name="code" value="${item.code}">
	</form>
</body>
</html>