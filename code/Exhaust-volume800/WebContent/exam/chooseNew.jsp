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
		
		document.getElementsByName("count" + first)[0].value = count;
		
	}
	
	
	
	
	
	
	
	
	function showDiv(id){
		document.getElementById(id).style.display = "block";
	}
	function hideDiv(id){
		document.getElementById(id).style.display = "none";
	}
	
	
function createDiv(name,chapter,number){
		
		var div = document.getElementById("dididi");
		div1 = document.createElement("div");
		div1.id = name;
		var questionType;
		if(number == "1"){
			questionType = "选择题";
			
		}else if(number == "2"){
			questionType = "简答";
		}
		var num = document.getElementsByName("input" + chapter + number)[0].value;
		for(var i = 1; i <= num; i++){
			var p = document.createElement("p");
			p.innerHTML = questionType + i + "的分值是:"
			var input = document.createElement("input");
			var questionScore = document.getElementsByName("questionScore" + number)[0].value;
			input.value = questionScore;
			input.name = "divInput" + chapter + number;
			p.appendChild(input);
			div1.appendChild(p);
		}
		var button = document.createElement("input");
		button.setAttribute("type","button");
		button.setAttribute("value","确定");
		button.onclick = function(){
			hideDivhh(chapter,number);
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
			createDiv(name,chapter,number);
		}

		showDiv("dididi");
		showDiv(name);
	}
	
	function deleteNode(chapter,number){
		var node = document.getElementById("div" + chapter + number);
		if(node != null){
			node.parentNode.removeChild(node);
		}
		
	}
	
	
	function hideDivhh(chapter,number){
		
		var nodes = document.getElementsByName("divInput" + chapter + number);
		var count = 0;
		for(var i = 0; i < nodes.length; i++){
			if(isNaN(nodes[i].value)){
				nodes[i].value = 0;
			}
			count = parseInt(count) + parseInt(nodes[i].value);
		}
		document.getElementsByName("everyScore" + chapter + number)[0].value = count;
		changeScore(chapter);
		
		hideDiv("dididi");
		hideDiv("div"+ chapter + number);
		
		
		
	}
	function changeScore(chapter){
		
		var count = 0;
		for(var i = 1; i <= 10; i++){
			count = parseInt(count) + parseInt(document.getElementsByName("everyScore"+chapter+i)[0].value);
			
		}
		document.getElementsByName("score"+ chapter)[0].value = count;
		
	}
	
	function changeEveryScore(chapter,number){
		var questionScore = document.getElementsByName("questionScore" + number)[0].value;
		var count = document.getElementsByName("input" + chapter + number)[0].value;
		var score = parseInt(count) * parseInt(questionScore);
		document.getElementsByName("everyScore" + chapter + number)[0].value = score;
		changeScore(chapter);
		
	}
	
	
	
function change(chapter,number){
		
		countNumber(chapter,10);
		changeEveryScore(chapter,number);
		deleteNode(chapter,number);
		
	}

function changeQuestionScore(number){
	
	for(var i = 1; i <= 9; i++){
		changeEveryScore(i,number);
	}
	
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
 	input{
 		width:20px;
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
			<th>难度等级</th>
			<th>单项选择 分值:<input type = "text" value = "2" name = "questionScore1" onchange = "changeQuestionScore(1)"></th>
			<th>多项选择 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(2)"></th>
			<th>填空 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(3)"></th>
			<th>判断 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(4)"></th>
			<th>解释概念 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(5)"></th>
			<th>简答 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(6)"></th>
			<th>论述 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(7)"></th>
			<th>计算 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(8)"></th>
			<th>证明 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(9)"></th>
			<th>其他 分值:<input type = "text" value = "1" name = "questionScore2" onchange = "changeQuestionScore(10)"></th>
			<th>总数</th>
			<th>总分</th>
		</tr>

			
			
			<c:forEach var = "chapter" items = "${chapterList}">
				<tr>
				
					<td>
						${chapter.name}
					</td>
					
					<td>
						<select>
							<option value = "记忆">记忆</option>
							<option value = "理解">理解</option>
							<option value = "简单应用">简单应用</option>
							<option value = "综合应用">综合应用</option>
							<option value = "混合" checked = "checked">混合</option>
						</select>
					</td>
					
					
					<c:forEach var = "number" begin = "1" end = "10">
						<td>
							<c:set var="classNum" value="input${chapter}${number}"/>
							<input type = "text" value = "0" name = "${classNum }"  onchange = "change(${chapter},${number})"/>
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