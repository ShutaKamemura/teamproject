<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>insert</title>
<link rel="stylesheet" href="insert.css" type="text/css">
</head>
<body>
<div class="login">
	<h2>商品登録</h2>
	<a href="http://localhost:8080/webExam2/ManageServlet">管理ページに戻る</a>
	<form action="InsertServlet" method="post">
		<table border="1">
			<tr>
				<th>商品名</th><td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>カテゴリ</th>
				<td>
					<select name="category">
						<option value="general">雑貨</option>
						<option value="electric">家電</option>
						<option value="book">書籍</option>
						<option value="food">食品</option>
						<option value="fashion">ファッション</option>
						<option value="other">未分類</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>価格</th><td><input type="text" name="price"></td>
			</tr>
			<tr>
				<th>在庫</th><td><input type="text" name="stock"></td>
			</tr>
		</table>
		<button class="yes" name="btn" value="yes">登録</button>
		
		<c:if test="${message != null }">
			<p>${message}</p>
		</c:if>
	</form>
	</div>
</body>
</html>