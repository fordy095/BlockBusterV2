<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String context = request.getContextPath();
    System.out.println("context->"+context);
%>


<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>


<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




<script type="text/javascript">

		
		
		/* 댓글 삭제 전 check */
		function commentDeleteCheck(Vindex){
			
			if (confirm("정말 삭제하시겠습니까? 삭제할 경우, 게시글 복원이 불가합니다.") == true){   
				
				var cnoNo = $('#cnoNo'+Vindex).val(); //cno값을 가져옴
				
					$.ajax({
						url : "<%=context%>/commentDelete",
						data : {cno : cnoNo},
					 	dataType :'text', 
						success : function(data){
							if(data == '1'){
								$('#cno1'+Vindex).remove();
							 	$('#cno2'+Vindex).remove();
							 	$('#cno3'+Vindex).remove();
							}
						}
					});
					
			}else{  
			 	   return false;	
				 } 
		}
		
		

		/* 댓글 수정 */
		function commentRealEdit(Vindex){
				var cnoNo = $('#cnoNo'+Vindex).val();
				var c_content=$("#c_contentEdit"+Vindex).val();/* 수정된 댓글 내용 */
				
					$.ajax({
						url : "<%=context%>/commentRealEdit",
						data : {'cno' : cnoNo, 'c_content' : c_content},
					 	dataType :'text', 
						success : function(data){
							if(data == '1'){
								alert("수정 성공");
								listComment("1");
							}
						}
					});
		}
		
		
		function commentEdit(Vindex){
			$('#cno2'+Vindex).hide();
			$('#cno3'+Vindex).show();
			$('#edit'+Vindex).hide();
	}
		
</script>
		

		
</head>
<body>
<h1>세션아이디 : ${sessionScope.sessionId}</h1> 
	<!-- 댓글 리스트 -->
	<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">

		<h6 class="border-bottom pb-2 mb-0">Reply list</h6>
		<div id="replyList"></div>
	

	<!-- 댓글 출력부 -->
	<div class="template-box template-box-1">
	<c:set var="num" value="${pg.total-pg.start+1}"></c:set>
	
	
	<table>
		
		<c:forEach var="list" items="${commentList}" varStatus="status">
			
			<tr id="cno1${status.index}" class="border-top pb-2 mb-0">
				
				<td>${list.nickName}&emsp;|&emsp;${list.c_date}</td>
				<td><input type="hidden" value="${list.r_no}"></td>
				<td><input type="hidden" id="cnoNo${status.index}" value="${list.cno}"></td>
				
				
				<td class="col-sm-1">
					<c:choose>
					    <c:when test="${sessionScope.sessionId==list.id}">
							<a class="modify-mode-none" href="#" id="edit${status.index}" onclick="commentEdit(${status.index}); return false;">수정</a>
					    </c:when>
					</c:choose>
				</td>
				<td class="col-sm-1">
					<c:choose>
					    <c:when test="${sessionScope.sessionId==list.id}">
					    	<a  href="#" onclick="commentDeleteCheck(${status.index})">삭제</a>
					    </c:when>
					</c:choose>
				</td>
				
				
			</tr>
			
			<!-- 기존에 등록된 댓글 -->
			<tr id="cno2${status.index}">
				<td class="col-sm-10">
					<div id="modifyScr2">
						${list.c_content}
					</div>
				</td>
			</tr>
			
			
			<!-- 수정할 댓글 -->
			<tr id="cno3${status.index}" style="display: none;">		
				<td>	
					<c:choose >
					    <c:when test="${sessionScope.sessionId==list.id}">
							<div class="row">
								<div class="col-sm-10">
									<textarea mexlength="300" id="c_contentEdit${status.index}" class="form-control" rows="2" cols="100" placeholder="댓글을 입력해 주세요">${list.c_content}</textarea>
								</div>
					
								<div class="col-sm-2">
									<a href="" onclick="commentRealEdit(${status.index}); return false;">등록</a>
								</div>
							</div>
					    </c:when>
					</c:choose>
				</td>
				
			</tr>
			
			
			<c:set var="num" value="${num - 1}"></c:set>
			
		</c:forEach>
		
	</table>
	
	</div>
		
	</div> <!-- reply list 끝 -->
	


	
		<c:if test="${pg.startPage > pg.pageBlock }">
			<a href="" onclick="listComment(${pg.startPage-pg.pageBlock}); return false;">⬅︎</a>
		</c:if>
		
		<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
			<a href="" onclick="listComment(${i}); return false;">[${i}]</a>
		</c:forEach>
		
		<c:if test="${pg.endPage < pg.totalPage }">
			<a href="" onclick="listComment(${pg.startPage+pg.pageBlock}); return false;">➡︎︎</a>
		</c:if>
 
 


 
 

</body>
</html>