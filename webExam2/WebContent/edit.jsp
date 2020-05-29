<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>edit</title>
<link rel="stylesheet" href="change.css" type="text/css">
</head>
<body>
	<h2>商品編集ページ</h2>
	<form action="EditServlet" method="post">
		<table border="1">
			<tr>
				<th>商品名</th><td><input type="text" name="name" value="${item.name}"></td>
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
						<option value="other" selected>未分類</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>価格</th><td><input type="text" name="price" value="${item.price}"></td>
			</tr>
			<tr>
				<th>在庫</th><td><input type="text" name="stock" value="${item.stock}"></td>
			</tr>
		</table>
		<p>上記で変更します</p>
		<p>よろしいですか？</p>
		<button class="yes" name="btn" value="yes">はい</button>
		<button class="no" name="btn" value="no">いいえ</button>
		<input type="hidden" name="code" value="${item.code}">
	</form>
</body>
</html>