<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	
	var chapterhh;
	var numberhh;
	function countNumber(first,second){

		var value = 0;
		var count = 0;
		for(var i = 1; i <= second; i++){
			var clcl = "input" + first + i;
			var temp = parseInt(document.getElementsByName(clcl)[0].value);
			if(isNaN(temp)){
				temp = 0;
			}
			count = parseInt(count) + temp;
		}

		document.getElementsByName("count"+first)[0].value = count;

	}
	
	
	
	
	
	
	
	function showDiv(id){
		document.getElementById(id).style.display = "block";
	}
	function hideDiv(id){
		document.getElementById(id).style.display = "none";
	}
	
	
function createDiv(name){
		
		var div = document.getElementById("dididi");
		div1 = document.createElement("div");
		div1.id = name;
		var questionType;
		if(numberhh == "1"){
			questionType = "选择题";
			
		}else if(numberhh == "2"){
			questionType = "简答";
		}
		var num = document.getElementsByName("input" + chapterhh + numberhh)[0].value;
		for(var i = 1; i <= num; i++){
			var p = document.createElement("p");
			p.innerHTML = questionType + i + "的分值是:"
			var input = document.createElement("input");
			
			input.value = "0";
			input.name = "divInput" + chapterhh + numberhh;
			p.appendChild(input);
			div1.appendChild(p);
		}
		var button = document.createElement("input");
		button.setAttribute("type","button");
		button.setAttribute("value","确定");
		button.onclick = function(){
			hideDivhh();
		}
		div1.appendChild(button);
		div.appendChild(div1);
	}
	
	
	function showDivhh(chapter,number){
		chapterhh = chapter;
		numberhh = number;
		var name = "div" + chapterhh + numberhh;
		
		var div1 = document.getElementById(name);
		if(div1 == null){
			createDiv(name);
		}

		showDiv("dididi");
		showDiv(name);
	}
	
	
	function hideDivhh(){
		
		var nodes = document.getElementsByName("divInput" + chapterhh + numberhh);
		var count = 0;
		for(var i = 0; i < nodes.length; i++){
			if(isNaN(nodes[i].value)){
				nodes[i].value = 0;
			}
			count = parseInt(count) + parseInt(nodes[i].value);
		}
		document.getElementsByName("everyScore" + chapterhh + numberhh)[0].value = count;
		changeScore();
		
		hideDiv("dididi");
		hideDiv("div"+ chapterhh + numberhh);
	}
	function changeScore(){
		
		var count = 0;
		for(var i = 1; i <= 2; i++){
			
			count = parseInt(count) + parseInt(document.getElementsByName("everyScore"+chapterhh+i)[0].value);
			
		}
		document.getElementsByName("score"+ chapterhh)[0].value = count;
		
	}
	
	
</script>


<style type="text/css">
	#dididi { 
    	display:none;
    	position:absolute;
    	right:800px;
    	buttom:400px;   		
		background-color:#ff3300;
 }

</style>

</head>
<body>

	<%
		//List<String> chapter = new ArrayList<String>();
		
	%>

	<table>
		<tr>
			<th>	</th>
			<th>单项选择</th>
			<th>简答题</th>
			<th>总数</th>
			<th>总分</th>
		</tr>

			
			
			<c:forEach var = "chapter" begin = "1" end = "10">
				<tr>
				
					<td>
						第<c:out value = "${chapter }"/>章
					</td>
					
					
					
					<c:forEach var = "number" begin = "1" end = "2">
						<td>
							
							<c:set var="classNum" value="input${chapter}${number}"/>
							<input type = "text" value = "0" name = "${classNum }"  onchange = "countNumber(${chapter},2)"/>
							<button onclick = "showDivhh(${chapter},${number})" >alter</button>	
							<input type = "text" value = "0" style = "display:none;" name = "everyScore${chapter}${number}"/>
						</td>
					</c:forEach>
									
					<td>
						<input type = "text" value = "0" name = "count${chapter}"/>
						
					</td>
					<td>
						<input type = "text" value = "0" name = "score${chapter}"> 
					</td>
				<td>
				
				
				</tr>
				
			</c:forEach>
			

			
	</table>
	<div id = "dididi">

	</div>
</body>
</html>