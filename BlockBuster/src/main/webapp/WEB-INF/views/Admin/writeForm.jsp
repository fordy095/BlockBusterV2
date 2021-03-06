<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../header.jsp" %> 
<html>
<%
	String context = request.getContextPath();
%>
<head>
<meta charset="UTF-8">
<title>Write Form</title>
<style>

.bhtitle h2 {
	font-size:60px;
	font-weight:bold;
	font-family: 'Montserrat', sans-serif;
	text-align:left;
	color:#fff;
  	position: relative;
  	padding:20px;
}
hr{
	background-color:white;
}

body{
	background-color : #333;
}
a {
	color : white;
}
	
.b{
	font-family: 'Montserrat', sans-serif;
	font-weight: 900;
	width: 100%;
	padding: 18px;
	border-color: black;
	
}
.b tr{
  	font-family: 'Montserrat', sans-serif;
  	text-align: center;
  	color: #fff;
  	cursor: pointer;
  	/* width: 100%; */
  	padding: 18px;
} 

.b th{
	background: #ff7f00;
	font-family: 'Montserrat', sans-serif;
	font-weight: 1000;
	width: 350;
	height: 50;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
	color: black;
}

.b td {
	border-bottom: 1px solid #F5F5F5;
	border-top: 1px solid #F5F5F5; 
	border-right: 1px solid #F5F5F5;
    height: 50;
    text-align: center;
}

#list:hover tr:hover td{
    background: #F5F5F5;
    color: black;
}

</style>

<script>
function categoryChange(e) {
    var movie = ["1100", "1200", "1300", "1400", "1500", "1600", "1700"];
    var drama = ["2100", "2200", "2300"];
    var enter = ["3100", "3200", "3300", "3400", "3500"];
    var dacu = ["4100", "4200", "4300"];
    var ani  = ["5100", "5200"];
    var target = document.getElementById("genre");

    if(e.value == "1000") var d = movie;
    else if(e.value == "2000") var d = drama;
    else if(e.value == "3000") var d = enter;
    else if(e.value == "4000") var d = dacu;	
    else if(e.value == "5000") var d = ani;

    target.options.length = 0;

    for (x in d) {
        var opt = document.createElement("option");
        opt.value = d[x];
        opt.innerHTML = d[x];
        target.appendChild(opt);
    } 
}

</script>
</head>

<body>

<c:if test="${sessionScope.sessionId eq 'admin' }"> 

<div class="container">

	<div class=bhtitle>
	<b><h2>?????? ??????</h2></b>
	</div>
	
<pre>

</pre>
  

   	<div align="center">
	<form action="${pageContext.request.contextPath}/Admin/write" method="post" id="frm" name="frm" enctype="multipart/form-data" target="myBatisFrame"> 	
   		
   	<table id="list" class="b">
        
        <tr id = "headRow" style="text-align: center; background-color:#F5F5F5; color: black">	

        <tr>
            <th>????????????</th>
            <td>
                <input type="text" name="title" required="required">
            </td>
        </tr>
        
	        <tr>
	           <td>
	          	<select class="form-control" id="category" name="category" onchange="categoryChange(this)">
		            <option>????????? ??????</option>
		            <option value="1000">??????</option>
		            <option value="2000">?????????</option>
		            <option value="3000">??????</option>
					<option value="4000">??????</option>
			        <option value="5000">??????</option>
	            </select>
			   </td>
			   <td>
	           <select class="form-control" id="genre" name="genre">
	             <option>??????????????????</option>
	           </select>
	  		   </td>
	        </tr>
            
        <tr>
            <th>????????????</th>
            <td>
                <input type="number" name="year" required="required">
            </td>
        </tr>
        
        <tr>
            <th>????????????</th>
            <td>
                <input type="text" name="country" required="required">
            </td>
        </tr>
        
        <tr>
            <th>??????</th>
            <td>
                <input type="text" name="director">
            </td>
        </tr>
        
        <tr>
            <th>?????????</th>
            <td>
                <input type="text" name="casting">
            </td>
        </tr>
        
        <tr>
            <th>?????????</th>
            <td>
                <input type="text" name="description">
            </td>
        </tr>
        
        <tr>
            <th>??????(???)</th>
            <td>
                <input type="number" name="price">
            </td>
        </tr>
        
        <tr>
            <th>?????????</th>
            <td>
            <input class="" id="imgFile" name="imgFile" type="file"/>
            </td>
        </tr>
        
        <tr>
            <th>?????? URL</th>
            <td>
                <input type="text" name="p_video">
            </td>
        </tr>
       
           
    	</tr>
	</table>
    </form>
        
      <br>
      
        <button form="frm" type="submit" class="btn btn-outline-primary">??????</button>
        
         
       <!--  <tr>
           <th></th>
           <td><input id="enroll" type="submit" value="??????"></td>
           <td><button type="button" class="btn btn-outline-primary" value="??????">??????</button></td>
        </tr> -->
        
    
    </div> <!-- div center -->
<br><br><%@include file="../footer.jsp" %>
    </div> <!-- container -->
    
</c:if> <!-- ?????????????????? ????????? -->

<script type="text/javascript">
function boardIn(){
	$('#frm').submit();
}
	function addFilePath(msg) {
		alert(msg);
		document.getElementById("frm").reset();
	}
</script>
  
</body>
</html>