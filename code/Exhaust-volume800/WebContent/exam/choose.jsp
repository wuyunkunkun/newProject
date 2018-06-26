	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>test</title>
<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="${ctx }/css/app.v2.css" type="text/css" />
<link rel="stylesheet" href="${ctx }/css/zujuan_kecheng.css" type="text/css" />
<link rel="stylesheet" href="${ctx }/js/calendar/bootstrap_calendar.css" type="text/css" cache="false" />
<link href="css/zujuan_kecheng.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function submits(){
	//
	
	var buttons = document.getElementsByName("checkboxs");
	var s="";
	for (var j = 0; j < buttons.length; j++) {
		if (buttons[j].checked == true) {
			s+=(j+1)+",";
		}
	}

	s = s.substring(0, s.length - 1);
	var splits=document.getElementById("splits");
	splits.value=s;

	var chapter = document.getElementsByName("chapter");
	var t="";
	for (var j = 0; j < chapter.length; j++) {
		if(chapter[j].value==''){
			chapter[j].value=0;
		}
		t+=chapter[j].value+",";	
	}

	t = t.substring(0,t.length-1);
	var chapters=document.getElementById("chapters");
	chapters.value=t;

	//总分
	//需要改
	var sum=0;
	var csum=0;
	var chapters=document.getElementsByName("chapter");
	for(var j=0;j<chapters.length;j++){
		csum+=parseInt(chapters[j].value);
	}

	var sumScore = document.getElementsByName("sumScore")[0].value;

	if(sumScore != 100){
		alert("总分不等于100");
		return false;
	}
	if(csum!=100){
		alert("试卷各章节总分不等于100");
		return false;
	}
	for(var i=1;i<11;i++){
		sum+=parseInt(document.getElementById("sum"+i).value);
	}
	if(sum!=100){
		alert("试卷各题型总分不等于100");
		return false;
	}
	var checkboxs=document.getElementsByName("checkboxs");
	a:
	for(var m=1;m<11;m++){
		var t=document.getElementById("sum"+m).value;
		if(t!=0){
				if(checkboxs[m-1].checked==false){
					alert("请选中要出题的章节");
					return false;
			}
		}
	}
	var load88 = document.getElementById("load88");
	load88.style.display = "block";
	var load8s = document.getElementById("load8s");
	load8s.style.display = "block";	
}
function num(){
	//各个总分
	var num1=document.getElementsByName("num1");
	var pointValue1=document.getElementsByName("pointValue1");
	if(isNaN(parseInt(num1[0].value))||isNaN(parseInt(pointValue1[0].value))){
		document.getElementById("sum1").value="0";
		document.getElementById("num1").checked = false;
	}else{
		var sum1 = parseInt(num1[0].value)*parseInt(pointValue1[0].value);
		document.getElementById("sum1").value=sum1;

		document.getElementById("num1").checked = true;

	}
	
	var num2=document.getElementsByName("num2");
	var pointValue2=document.getElementsByName("pointValue2");
	if(isNaN(parseInt(num2[0].value))||isNaN(parseInt(pointValue2[0].value))){
		document.getElementById("sum2").value="0";
		document.getElementById("num2").checked = false;
	}else{
		var sum2 = parseInt(num2[0].value)*parseInt(pointValue2[0].value);
		document.getElementById("sum2").value=sum2;

		document.getElementById("num2").checked = true;
		
	}
	
	var num3=document.getElementsByName("num3");
	var pointValue3=document.getElementsByName("pointValue3");
	if(isNaN(parseInt(num3[0].value))||isNaN(parseInt(pointValue3[0].value))){
		document.getElementById("sum3").value="0";
		document.getElementById("num3").checked = false;
	}else{
		var sum3 = parseInt(num3[0].value)*parseInt(pointValue3[0].value);
		document.getElementById("sum3").value=sum3;
		

		document.getElementById("num3").checked = true;
		

	}
	
	var num4=document.getElementsByName("num4");
	var pointValue4=document.getElementsByName("pointValue4");
	if(isNaN(parseInt(num4[0].value))||isNaN(parseInt(pointValue4[0].value))){
		document.getElementById("sum4").value="0";
		document.getElementById("num4").checked = false;
	}else{
		var sum4 = parseInt(num4[0].value)*parseInt(pointValue4[0].value);
		document.getElementById("sum4").value=sum4;
		
		document.getElementById("num4").checked = true;
		

	}
	
	var num5=document.getElementsByName("num5");
	var pointValue5=document.getElementsByName("pointValue5");
	if(isNaN(parseInt(num5[0].value))||isNaN(parseInt(pointValue5[0].value))){
		document.getElementById("sum5").value="0";
		document.getElementById("num5").checked = false;
	}else{
		var sum5 = parseInt(num5[0].value)*parseInt(pointValue5[0].value);
		document.getElementById("sum5").value=sum5;
	
		document.getElementById("num5").checked = true;
		

	}
	
	var num6=document.getElementsByName("num6");
	var pointValue6=document.getElementsByName("pointValue6");
	if(isNaN(parseInt(num6[0].value))||isNaN(parseInt(pointValue6[0].value))){
		document.getElementById("sum6").value="0";
		document.getElementById("num6").checked = false;
	}else{
		var sum6 = parseInt(num6[0].value)*parseInt(pointValue6[0].value);
		document.getElementById("sum6").value=sum6;
		
		document.getElementById("num6").checked = true;
		

	}
	
	var num7=document.getElementsByName("num7");
	var pointValue7=document.getElementsByName("pointValue7");
	if(isNaN(parseInt(num7[0].value))||isNaN(parseInt(pointValue7[0].value))){
		document.getElementById("sum7").value="0";
		document.getElementById("num7").checked = false;
	}else{
		var sum7 = parseInt(num7[0].value)*parseInt(pointValue7[0].value);
		document.getElementById("sum7").value=sum7;
	
		document.getElementById("num7").checked = true;
		

	}
	

	var num8=document.getElementsByName("num8");
	var pointValue8=document.getElementsByName("pointValue8");
	if(isNaN(parseInt(num8[0].value))||isNaN(parseInt(pointValue8[0].value))){
		document.getElementById("sum8").value="0";
		document.getElementById("num8").checked = false;
	}else{
		var sum8 = parseInt(num8[0].value)*parseInt(pointValue8[0].value);
		document.getElementById("sum8").value=sum8;
		
		document.getElementById("num8").checked = true;


	}
	

	var num9=document.getElementsByName("num9");
	var pointValue9=document.getElementsByName("pointValue9");
	if(isNaN(parseInt(num9[0].value))||isNaN(parseInt(pointValue9[0].value))){
		document.getElementById("sum9").value="0";
		document.getElementById("num9").checked = false;
	}else{
		var sum9 = parseInt(num9[0].value)*parseInt(pointValue9[0].value);
		document.getElementById("sum9").value=sum9;
		
		document.getElementById("num9").checked = true;
		

	}
	

	var num10=document.getElementsByName("num10");
	var pointValue10=document.getElementsByName("pointValue10");
	if(isNaN(parseInt(num10[0].value))||isNaN(parseInt(pointValue10[0].value))){
		document.getElementById("sum10").value="0";
		document.getElementById("num10").checked = false;
	}else{
		var sum10 = parseInt(num10[0].value)*parseInt(pointValue10[0].value);
		document.getElementById("sum10").value=sum10;
		
		document.getElementById("num10").checked = true;
		

	}
	
}
window.onload=function(){
	  var panduan=document.getElementById("panduan");
	  if(panduan.value=="错误"){
		  alert("题库试题不足");
	  }
	}
</script>



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
	
	function countNumbers(number,chapterNumber){
		var count = 0;
		chapterNumber = parseInt(chapterNumber);
		
		for(var i = 1; i <= chapterNumber; i++){
			var clcl = "input" + i + number;
			var temp = parseInt(document.getElementsByName(clcl)[0].value);
			if(isNaN(temp)){
				temp = 0;
			}
			count = parseInt(count) + temp;
			
		}
		
		document.getElementsByName("counts" + number)[0].value = count;
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
			questionType = "多项选择";
		}else if(number == "3"){
			questionType = "填空";
		}else if(number == "4"){
			questionType = "判断";
		}else if(number == "5"){
			questionType = "解释概念";
		}else if(number == "6"){
			questionType = "简答";
		}else if(number == "7"){
			questionType = "论述";
		}else if(number == "8"){
			questionType = "计算";
		}else if(number == "9"){
			questionType = "证明";
		}else{
			questionType = "其他";
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
		changeScores(8,number);
		changeSum(10);
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
	
	
	function changeScores(chapterNumber,number){
		var count = 0;
		for(var i = 1; i <= parseInt(chapterNumber); i++){
			count = parseInt(count) + parseInt(document.getElementsByName("everyScore" + i + number)[0].value);
		}

		document.getElementsByName("scores" + number)[0].value = count;
	}
	
	function changeEveryScore(chapter,number){
		var questionScore = document.getElementsByName("questionScore" + number)[0].value;
		var count = document.getElementsByName("input" + chapter + number)[0].value;
		var score = parseInt(count) * parseInt(questionScore);
		document.getElementsByName("everyScore" + chapter + number)[0].value = score;
		changeScore(chapter);
		changeScores(chapter,number);
		
	}
	
	function changeSum(number){
		var count = 0;
		var score = 0;
		for(var i = 1; i <= parseInt(number); i++){
			count = parseInt(count) + parseInt(document.getElementsByName("counts" + i)[0].value);

			score = parseInt(score) + parseInt(document.getElementsByName("scores" + i)[0].value);
		}


		document.getElementsByName("sumCount")[0].value = count;
		document.getElementsByName("sumScore")[0].value = score;
		
	}
	
	
function change(chapter,number){
		
		countNumber(chapter,10);
		countNumbers(number,8);
		changeEveryScore(chapter,number);
		changeScores(8,number);
		changeSum(8);
		deleteNode(chapter,number);
		
	}

function changeQuestionScore(number){
	
	for(var i = 1; i <= 9; i++){
		changeEveryScore(i,number);
	}
	
}


</script>
<style> 
#ch_sub{
	clear:both;
	margin:auto;
	width:180px;
	heitht:60px;
	text-align:center;
}
#ch_put{
	width:180px;
	heitht:60px;
	background-color: #87CEFA;
	color:#fff;
	font: 20px Verdana, Arial, Helvetica, sans-serif;
}
table 
  {   border-collapse:   separate;   border-spacing:   7px; background-color:#E6E6FA  } 
  
input
{ width:60px}

#dididi { 
    	display:none;
    	position:absolute;
    	right:center;
    	top:90px;   		
		background-color:#7EC0EE;
		width:200px;
 }

</style> 
</head>
<body>
<section class="vbox">
	<jsp:include page="../header.jsp"/>
  	<section>
    <section class="hbox stretch"> <!-- .aside -->
    	<jsp:include page="../aside.jsp"/>
      	<!-- /.aside -->
      	<section id="content">
        	<section class="vbox">
          		<section class="scrollable padder">
       			<div class="load88" id="load88"> </div>
          			<div class="m-b-md">
    					 <h3 class="m-b-none">生成试卷</h3>
    					 <small>Welcome back, ${teacher.name }</small>      
 					</div>  
            		
            		<section class="panel panel-default">
            		 <form action="${ctx }/exam/createExamNew" method="post" onsubmit="return submits();" id="myform" name="myform"> 
                    <table class="insert-tab" width="100%">
       					
       					<tr>
       	<tr>
			<td>预期分数</td>
			<td><input type = "text" name = "anticipate" value = "0"/></td>
		</tr>
			
		</tr>
		
		<tr>
			<th>	</th>
			<th>难度等级</th>
			<th>单项选择 分值:<input type = "text" value = "0" name = "questionScore1" onchange = "changeQuestionScore(1)"></th>
			<th>多项选择 分值:<input type = "text" value = "0" name = "questionScore2" onchange = "changeQuestionScore(2)"></th>
			<th>填空 分值:<input type = "text" value = "0" name = "questionScore3" onchange = "changeQuestionScore(3)"></th>
			<th>判断 分值:<input type = "text" value = "0" name = "questionScore4" onchange = "changeQuestionScore(4)"></th>
			<th>解释概念 分值:<input type = "text" value = "0" name = "questionScore5" onchange = "changeQuestionScore(5)"></th>
			<th>简答 分值:<input type = "text" value = "0" name = "questionScore6" onchange = "changeQuestionScore(6)"></th>
			<th>论述 分值:<input type = "text" value = "0" name = "questionScore7" onchange = "changeQuestionScore(7)"></th>
			<th>计算 分值:<input type = "text" value = "0" name = "questionScore8" onchange = "changeQuestionScore(8)"></th>
			<th>证明 分值:<input type = "text" value = "0" name = "questionScore9" onchange = "changeQuestionScore(9)"></th>
			<th>其他 分值:<input type = "text" value = "0" name = "questionScore10" onchange = "changeQuestionScore(10)"></th>
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
							<option value = "混合" selected = "selected">混合</option>
						</select>
					</td>
					
					
					<c:forEach var = "number" begin = "1" end = "10">
						<td>
							<c:set var="classNum" value="input${chapter.id}${number}"/>
							<input type = "text" value = "0" name = "${classNum }"  onchange = "change(${chapter.id},${number})" style = "width:30px" />
							<button type = "button" onclick = "showDivhh(${chapter.id},${number})" style="width:40px">alter</button>	
							<input type = "text" value = "0" style = "display:none;" name = "everyScore${chapter.id}${number}"/>
						</td>
					</c:forEach>
									
					<td>
						<input type = "text" value = "0" name = "count${chapter.id}"/>
						
					</td>
					<td>
						<input type = "text" value = "0" name = "score${chapter.id}"> 
					</td>
				<td>
				
				
				</tr>
				
		</c:forEach>
		<tr>
			<td>合计个数</td>
			<td></td>
			
			<c:forEach var = "i" begin = "1" end = "10">
				<td><input type = "text" value = "0" name = "counts${i}"/></td>
			</c:forEach>	
			<td>
				<input type = "text" name = "sumCount" value = "0"/>
			</td>
		</tr>
		<tr>
			<td>合计分数</td>
			<td></td>
			
			<c:forEach var = "i" begin = "1" end = "10">
				<td><input type = "text" value = "0" name = "scores${i}" /></td>
			</c:forEach>
			<td>
				<input type = "text" name = "sumScore" value = "0"/>
			</td>
		</tr>
       					
       					
       					
       					
       					
                     
                    </table>
                    <div  id="ch_sub" align="center"><input id="ch_put" type="submit" value="生成试卷" name="submit" />
                     
                    
				<div id = "dididi">
			
			
				</div>
                     
                </form>
                <input type="hidden" id="panduan" value="${panduan }"/></div>
                    </section>
        		</section>
        	</section>
        </section>
	</section>
</section>
<script src="${ctx }/js/app.v2.js"></script> <!-- Bootstrap --> <!-- App --> <script src="${ctx }/js/charts/easypiechart/jquery.easy-pie-chart.js" cache="false"></script> <script src="${ctx }/js/charts/sparkline/jquery.sparkline.min.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.min.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.tooltip.min.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.resize.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.grow.js" cache="false"></script> <script src="${ctx }/js/charts/flot/demo.js" cache="false"></script> <script src="${ctx }/js/calendar/bootstrap_calendar.js" cache="false"></script> <script src="${ctx }/js/calendar/demo.js" cache="false"></script> <script src="${ctx }/js/sortable/jquery.sortable.js" cache="false"></script>
</body>
</html>