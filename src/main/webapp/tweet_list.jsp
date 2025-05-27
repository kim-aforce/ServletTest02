<%@page import="jp.co.aforce.beans.Tweet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ツイート一覧</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="container">
		<h1>ツイート一覧</h1>
		<%-- 新規投稿 --%>
		<p>
			<a href="new_tweet.jsp">新規投稿</a>
		</p>
		<ul class = "tweet-list">
			<div class="tweet-content">
				<c:forEach var="tweet" items="${tweets}">
					<li>${tweet.content}<br>
					 投稿者：${tweet.author} 投稿時間：${tweet.postedAt}</li>
				</c:forEach>
		</div>
		</ul>
	</div>

</body>
</html>
