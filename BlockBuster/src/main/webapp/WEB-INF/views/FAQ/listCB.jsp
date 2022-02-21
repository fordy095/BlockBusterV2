<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<title>Insert title here</title>
<!-- <link href="/css/faqCB.css" rel="stylesheet" > -->
<style type="text/css">
body{
	background-color: #000;
	/* text-align: center; */
}

.titleCB h2{
	font-size:60px;
	font-weight:bold;
	font-family: 'Montserrat', sans-serif;
	text-align:left;
	color:#fff;
  	position: relative;
  	padding:20px;
	/* letter-spacing:0px;
  	transition:1s;
  	-webkit-transition:1s;
  	-ms-transition:1s; */
 
}

/* .titleCB h2:before,
.titleCB h2:after{
  	content:"";
  	position: absolute;
  	height: 3px;
  	width: 0px;
  	background: #F5F5F5;
  	transition:300ms;
  	-webkit-transition:1s;
  	-ms-transition:1s;
  	opacity:0.3;
  	left:50%;  
}
.titleCB h2:before{
bottom:0px;
}
.titleCB h2:after{
  	top:0;  
}
.titleCB h2:hover{
	letter-spacing:30px;
}
.titleCB h2:hover:before,
.titleCB h2:hover:after{
	width: 95%;
	opacity:1;
	left:0;
} */

.b{
	background: #ff7f00;
	font-family: 'Montserrat', sans-serif;
	font-weight: 900;
	width: 100%;
	padding: 18px;
	border:	none;
}
.b th{
	padding: 12px;
}

.accordion {
  	background-color: #000;
  	font-family: 'Montserrat', sans-serif;
  	text-align: left;
  	color: #fff;
  	cursor: pointer;
  	width: 100%;
  	padding: 18px;
  	border-bottom: 1px solid #F5F5F5;
  	border-left: 0;
  	border-right: 0;
  	border-top: 0;
  	outline: none;
  	transition: 0.4s;  	
}
.active, .accordion:hover {
  	background-color: #F5F5F5;
  	font-weight: bold;
  	font-family: 'Montserrat', sans-serif;
  	color: #000;
}
.panel {
  	background-color: #000;
  	font-family: 'Montserrat', sans-serif;
	color: #fff;
  	padding: 18px;
  	display: none;
  	overflow: hidden;
}
.panel input{	
	background-color: #ff7f00;
	font: 12px sans-serif;
	font-weight: bold;
  	text-align: center;
  	text-decoration: none;
	color: #000;
	width: 130;
	height: 30;
  	padding: 10px 20px;
  	border: none;
  	border-radius: 8px;
  	margin: 4px 2px;
  	display: inline-block;
  	cursor: pointer;
}
.panel input:hover{
	background-color: #F5F5F5;
  	font-family: 'Montserrat', sans-serif;
  	color: #000;
}
.panel p{
	text-align: left;
	padding-left: 40px;
}

.accordion:after {
  	content: '\02795'; /* Unicode character for "plus" sign (+) */
  	font-size: 13px;
  	color: #777;
  	float: right;
  	margin-left: 5px;
}
.active:after {
	content: "\2796"; /* Unicode character for "minus" sign (-) */
}

.button{	
	background-color: #ff7f00;
	font: 12px sans-serif;
	/* font-weight: bold; */
  	text-align: center;
  	text-decoration: none;
	color: black;
	width: 130;
	height: 30;
  	padding: 10px 20px;
  	border: none;
  	border-radius: 8px;
  	margin: 4px 2px;
  	display: inline-block;
  	cursor: pointer;
  	float: right;
}
.button:hover {
  	background-color: #F5F5F5;
}

.search-input input{
    background-color: #2f2f2f;
    color: #a5a5a5;
    width: 400px;
    height: 35px;
    padding-left: 20px;
    border-radius: 8px;
    border: 1px solid #2f2f2f;
	float: center;
}
.search-input select{
    background-color: #2f2f2f;
    color: #a5a5a5;
    width: 130px;
    height: 35px;
    padding-left: 20px;
    border-radius: 8px;
    border: 1px solid #2f2f2f;
	float: center;
}
.search-input option{
    background-color: #2f2f2f;
    color: #a5a5a5;
    width: 130px;
    height: 35px;
    padding-left: 20px;
    border-radius: 8px;
    border: 1px solid #2f2f2f;
	float: center;
}

.cs-search-btn{
	background-color: #747474;
	font: 12px sans-serif;
	/* font-weight: bold; */
  	text-align: center;
  	text-decoration: none;
	color: black;
	width: 130;
	height: 30;
  	border: none;
  	border-radius: 8px;
  	padding: 10px 20px;
  	margin: 4px 2px;
  	display: inline-block;
  	cursor: pointer;
  	
  	/* border-radius: 8px;
  	color: #ff7f00;
  	text-align: center; */
}
.cs-search-btn:hover{
	background-color: #F5F5F5;
}
.pag{
	text-align: center;
}
.pag a{
	color: #F5F5F5;
	text-decoration: none;
}

.pag a:hover{
	color: #ff7f00;
}

/* 	
.page_wrap {
	text-align:center;
	align: center;
	font-size:0;
 }
.page_nation {
	display:inline-block;	
}
.page_nation .none {
	display:none;
}
.page_nation a {
	display:block;
	margin-left: 100px;
	margin:0 3px;
	float: left;
	border:1px solid #e6e6e6;
	width:28px;
	height:28px;
	line-height:28px;
	text-align:center;
	background-color:#fff;
	font-size:13px;
	color:#999999;
	text-decoration:none;
}
.page_nation .arrow {
	border:1px solid #ccc;
}
.page_nation .prev {
	background:#f8f8f8 no-repeat center center;
	margin-right:7px;
}
.page_nation .next {
	background:#f8f8f8 no-repeat center center;
	margin-left:7px;
}
.page_nation a.active {
	background-color:#42454c;
	color:#fff;
	border:1px solid #42454c;
}
 */
</style>
</head>
<body>
<pre>

</pre>
<%
	String context = request.getContextPath();
%>


<div class="container">
<div class="titleCB">
<b><h2>FAQ</h2></b>
</div>
 <table class="b">
 	<tr><th>No</th><th>제목</th></tr>
 </table>
<table>
	<c:forEach var="faq" items="${listFaq }">
		
	<button class="accordion"> ${faq.f_no}&emsp;&emsp;&emsp;&emsp;&emsp;${faq.f_title }</button>
		<div class="panel">
  			<p>${faq.f_content } <br><br><br>		
  	<!-- ------------------------------ admin 권한 설정하기 --------------------------------------- -->
		<c:if test="${sessionScope.sessionId eq 'admin' }">	  			
			<input type="button"  value="수정" onclick="location.href='${pageContext.request.contextPath}/updateFormCB?f_no=${faq.f_no}'">
			<input type="button"  value="삭제" onclick="location.href='${pageContext.request.contextPath}/deleteCB?f_no=${faq.f_no}'">	
		</c:if>	
  			</p>
		</div><br>
	
</c:forEach>
</table>
<pre>

</pre>
<!-- ------------------------------ 페이징처리 --------------------------------------- -->
<!-- <ul class="pagination justify-content-center"> -->
<ul class="pag">
<c:set var="num" value="${pg.total-pg.start+1 }"></c:set>
<c:set var="num" value="${num - 1 }"></c:set>
<c:if test="${pg.startPage > pg.pageBlock }">
 	<li class="page-item"><a href="${pageContext.request.contextPath}/FAQ/listCB?currentPage=${pg.startPage-pg.pageBlock }">[이전]</a>
 </c:if>
 <c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage }">
 	<a href="${pageContext.request.contextPath}/FAQ/listCB?currentPage=${i }"> [${i}]</a>
 </c:forEach>
 <c:if test="${pg.endPage < pg.totalPage }">
 	<a href="${pageContext.request.contextPath}/FAQ/listCB?currentPage=${pg.startPage+pg.pageBlock }">[다음]</a></li>
 </c:if>
</ul> 
 <%-- 
<c:set var="num" value="${pg.total-pg.start+1 }"></c:set>
<c:set var="num" value="${num - 1 }"></c:set>

<div class="page_wrap">
   	<div class="page_nation">
<c:if test="${pg.startPage > pg.pageBlock }">
 	<a class="arrow prev" href="<%=context%>/FAQ/listCB?currentPage=${pg.startPage-pg.pageBlock }">⬅︎</a>
 </c:if>
 <c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage }">
 	<a class="active" href="<%=context%>/FAQ/listCB?currentPage=${i }"> ${i}</a>
 </c:forEach>
 <c:if test="${pg.endPage < pg.totalPage }">
 	<a class="arrow next" href="<%=context%>/FAQ/listCB?currentPage=${pg.startPage+pg.pageBlock }">➡︎</a></li>
 </c:if>
</div>
	</div> --%>
<!-- ------------------------------ admin 권한 설정하기 --------------------------------------- --> 	
<c:if test="${sessionScope.sessionId eq 'admin' }"> 
	<input type="button" value="입력" onclick="location.href='${pageContext.request.contextPath}/FAQ/writeFormCB'" class="button">	
	</c:if>
	&nbsp; 
	<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/FAQ/listCB'" class="button"><p>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>

<!-- ----------------------------------검색기능---------------------------- -->
<form class="search-input" name="form1" method="post" action="<%=context%>/listCB.do">
	<select name="search_option">
		<option value="f_title" >제목</option>
        <option value="f_content">내용</option>
        <option value="all">제목+내용</option>
    </select>
    <input type="text" name="keyword" value="${faq.keyword}" maxlength="50" placeholder="궁금하신 점이 있다면 검색해주세요(최대 50자)">
    <button type="submit" class="cs-search-btn" value="검색">검색</button>
</form>

</div>
<pre>

</pre>
<%@ include file="../footer.jsp" %>
</body>
</html>