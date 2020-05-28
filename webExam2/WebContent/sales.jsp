<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>売上管理</title>
</head>
<body>
	<h2>商品売上一覧表</h2>
	<c:if test="${list != null}">
		<table border="1">
			<tr>
				<th>商品コード</th><th>商品名</th><th>カテゴリ</th><th></th>
			</tr>
			
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.code}</td><td>${item.name}</td><td>${item.category}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
</body>
</html>