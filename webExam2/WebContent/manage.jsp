<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Buddit Management</title>
<script src="https://kit.fontawesome.com/75beac86c5.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-light mb-2" style="background-color:#6d844d;">
  		<a class="navbar-brand" href="#">
    	<img src="reg.png" width="auto" height="32"></a>
  		<a class="page-link text-dark bg-light" href="#">
  		<i class="fas fa-user-circle"></i>管理者 様</a>
	</nav>

	<div class="row">
	  <div class="col-3">
	    
	      <form action="ManageServlet" method="get">
	      	<button name="init" class="btn btn-primary btn-block">
	      	<i class="fas fa-home"></i>ホーム</button>
	      </form>
	      
		  <div class="accordion" id="productAccordion">
			     <div class="card">
			     
			        <div class="card-header">
			          <a class="text-dark d-block p-3 m-n3" data-toggle="collapse" href="#productCollapse">
			          <i class="fas fa-cube"></i>商品管理</a>
			        </div>
			        
			        <div class="collapse show" id="productCollapse" data-parent="#productAccordion">
			        
				        <div class="card-body">
				        
				        	<form action="ManageServlet" method="get">
	      						<button name="btn" value="search" class="btn btn-outline-success btn-block">商品一覧</button>
	      						<input type="hidden" name="selectWay" value="all">
	     					</form>
	      
				      		<form action="ManageServlet" method="get">
								<button name="btn" value="insert" class="btn btn-outline-success btn-block">商品登録</button>
							</form>
	      		
	     	 			</div>
					</div>
				</div>
		  </div>
		  
		  <form action="ManageServlet" method="get">
	      		<button name="btn" value="search" class="btn btn-info btn-block">売上管理</button>
	      		<input type="hidden" name="selectWay" value="sales">
	     </form>
	     	 
	      <div class="accordion" id="searchAccordion">
		     <div class="card">
		     
		        <div class="card-header">
		          <a class="text-dark d-block p-3 m-n3" data-toggle="collapse" href="#searchCollapse">
				  <i class="fas fa-search-plus"></i>検索条件</a>
		        </div>
		        
		        <div class="collapse show" id="searchCollapse" data-parent="#searchAccordion">
		        
			        <div class="card-body">
			        
				     	<form action="ManageServlet" method="get">
			     			<div class="form-group">
		                    	<label for="Name">Search Name</label>
			                    	<div class="form-row align-items-center">
			                    	
			                    		<div class="col-auto">
			                    			<input type="text" name="name" class="form-control" id="Name" placeholder="テキスト入力欄">
			                    		</div>
			                    		
			                    		<div class="col-auto">
			                    			<button name="btn" value="search">検索</button>
			                    			<input type="hidden" name="selectWay" value="name">
			                    		</div>
			                    		
			                  		</div>
			                </div>
			            </form>
			            
			            <form action="ManageServlet" method="get">    
			                <div class="form-group">
		                    	<label for="Category">Search Category</label>
			                    	<div class="form-row align-items-center">
			                    	
			                    		<div class="col-auto">
			                    			<select name="category" class="form-control" id="Category">
											    <option value="general">雑貨</option>
												<option value="electric">家電</option>
												<option value="book">書籍</option>
												<option value="food">食品</option>
												<option value="fashion">ファッション</option>
												<option value="other">未分類</option>
										    </select>
			                    		</div>
			                    		
			                    		<div class="col-auto">
			                    			<button name="btn" value="search">検索</button>
			                    			<input type="hidden" name="selectWay" value="category">
			                    		</div>
			                    		
			                  		</div>
			                </div>
			            </form>
			            
			            <form action="ManageServlet" method="get">  
			                <div class="form-group">
		                    	<label for="Price">Search Price</label>
			                    	<div class="form-row align-items-center">
			                    	
			                    		<div class="col-auto">
			                    			<select name="price" class="form-control" id="Price">
											    <option value="0">0-1500円</option>
												<option value="1">1500-3000円</option>
												<option value="2">3000-5000円</option>
												<option value="3">5000-10000円</option>
												<option value="4">10000円以上</option>
										    </select>
			                    		</div>
			                    		
			                    		<div class="col-auto">
			                    			<button name="btn" value="search">検索</button>
			                    			<input type="hidden" name="selectWay" value="price">
			                    		</div>
			                    		
			                  		</div>
			                </div>
				        </form>
	      			</div>
	      		</div>
	    	 </div>  
	       </div>
	  </div>
	  
	  <div class="col-9">
	    
	      <c:if test="${list != null}">
	        <table class="table table-striped">
				<tr>
					<th>商品id</th><th>商品コード</th><th>商品名</th><th>カテゴリ</th><th>価格</th><th>在庫</th><th></th><th></th><th></th>
				</tr>
				
				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.id}</td><td>${item.code}</td><td>${item.name}</td><td>${item.category}</td><td>${item.price}</td><td>${item.stock}</td>
						<td>
							<form action="ManageServlet" method="get">
								<button name="btn" value="edit">変更</button>
								<input type="hidden" name="code" value="${item.code}">
							</form>
						</td>
						<td>
							<form action="ManageServlet" method="get">
								<button name="btn" value="stock">補充</button>
								<input type="hidden" name="code" value="${item.code}">
							</form>
						</td>
						<td>
							<form action="ManageServlet" method="get">
								<button name="btn" value="delete">削除</button>
								<input type="hidden" name="code" value="${item.code}">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
		  </c:if>
		  
		  <c:if test="${list2 != null}">
			<h4>売上数を表示しています</h4>
				<table class="table table-striped">
					<tr>
						<th>商品id</th><th>商品コード</th><th>商品名</th><th>カテゴリ</th><th>売上</th>
					</tr>
					
					<c:forEach var="item" items="${list2}">
						<tr>
							<td>${item.id}</td><td>${item.code}</td><td>${item.name}</td><td>${item.category}</td><td>${item.sales}</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
	   </div>
	</div>



	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>