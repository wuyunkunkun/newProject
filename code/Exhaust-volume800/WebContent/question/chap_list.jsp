﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>Notebook | Web Application</title>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="${ctx }/css/app.v2.css" type="text/css" />
<link rel="stylesheet" href="${ctx }/js\calendar/bootstrap_calendar.css"
	type="text/css" cache="false" />
<link rel="stylesheet" href="${ctx }/css/record/record_Unchoose.css" type="text/css" />
<script src="${ctx }/js/jquery-1.8.3.min.js" cache="false"></script>
<!-- <script type="text/javascript">
	function myfun() {
		var prompt = "${prompt}";

		if (prompt == "false") {
			alert("当前试题在试卷当中有记录，请先删除试卷！");
		}
	}
	window.onload = myfun;
</script> -->

<script type="text/javascript">
 function alert1(){
 	//每次弹出情况原来写的数据
  	$("#wenbenkuang").val("");
  	$("#tanchukuang").show();
 }
 function hide1(){
  	$("#tanchukuang").hide();
 }

 <c:forEach items="${page.list }" var="q">
 $("#shanchu${q.id}").live("click",function(){
	 $("#wenbenkuang").val("");
	 $("#tanchukuang").show();
	 $("#questionid").val("${q.id}");
 })
 </c:forEach>
 $("#okButton").live("click",function(){
	 var questionid=$("#questionid").val();
	 var shanchu = document.getElementById("shanchu"+questionid);
	 var shanchuValue = shanchu.name;
	 var description_fu = document.getElementsByName("description_fu");
  	 var submitUnchoose = document.getElementsByName("submitUnchoose");
  	 var submitUnchooseValue = shanchuValue+"&description="+description_fu[0].value+"&teacher_id=${teacher.id}";
	 window.location.href=submitUnchooseValue; 
 });
 
 window.onload=function(){
	 var prompt = "${prompt}";

		if (prompt == "false") {
			alert("当前试题在试卷当中有记录，请先删除试卷！");
		}
	  var panduan=document.getElementById("searchques");
	  if(panduan.value=="0"){
		  alert("题库存在相似的题");
	  }
	  
	}
 </script>

<!--[if lt IE 9]> 
<script src="${ctx }/js/ie/html5shiv.js" cache="false"></script> 
<script src="${ctx }/js/ie/respond.min.js" cache="false"></script> 
<script src="${ctx }/js/ie/excanvas.js" cache="false"></script> 
<![endif]-->
</head>
<body>
	<section class="vbox"> <jsp:include page="../header.jsp" />
	<section> <section class="hbox stretch"> <!-- .aside -->
	<jsp:include page="../aside.jsp" /> <!-- /.aside --> <section
		id="content"> <section class="vbox"> <section
		class="scrollable padder">
	<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
		<li><a href="${ctx }/exam/zujuan_kecheng.jsp"><i class="fa fa-home"></i> 组卷系统</a></li>
	</ul>
	<div class="m-b-md">
		<h3 class="m-b-none">工作台</h3>
		<small>Welcome back, username</small>
	</div>
	<section class="panel panel-default">
	<table class="table table-hover">
		<tr>
			<td width="100px" height="60">
				<a href="${ctx }/question/list.jsp">添加试题</a>
			</td>
			<td>
				<a href="${ctx }/question/toTest">查询试题</a>
			</td>
		</tr>
		<form action="${ctx }/question/findQuestionById" method="post">
			<c:forEach items="${page.list }" var="q">
				<tr height="60">
					<td>题干</td>
					<td>${q.content }</td>
					<td width="120px">
						<a name="${ctx}/question/deleteQuestionById?id=${q.id}" id="shanchu${q.id }">删除</a> 
						<a href="${ctx}/question/toUpdate?id=${q.id}">修改</a>
					</td>
			</c:forEach>
			<input type="hidden" id="searchques" value="${search }"/>
		</form>
		
		<c:set var="url" value="${ctx }/question/findQuestionByChapter/${chapter_id }"/>
		<tr>
			<td colspan="5" align="center">共${page.totalRecords}条记录
				共${page.totalPages}页 当前第${page.pageNo}页<br> <a
				href="${url }?pageNo=${page.topPageNo }"><input type="button"
					name="fristPage" value="首页" /></a> <c:choose>
					<c:when test="${page.pageNo!=1}">
						<a href="${url }?pageNo=${page.previousPageNo }">
							<input type="button" name="previousPage" value="上一页" />
						</a>
					</c:when>
					<c:otherwise>
						<input type="button" disabled="disabled" name="previousPage"
							value="上一页" />
					</c:otherwise>
				</c:choose> <c:choose>
					<c:when test="${page.pageNo != page.totalPages}">
						<a href="${url }?pageNo=${page.nextPageNo }"><input
							type="button" name="nextPage" value="下一页" /></a>
					</c:when>
					<c:otherwise>
						<input type="button" disabled="disabled" name="nextPage"
							value="下一页" />
					</c:otherwise>
				</c:choose> <a href="${url }?pageNo=${page.bottomPageNo }"><input
					type="button" name="lastPage" value="尾页" /></a>
			</td>
		</tr>
	</table>
	<div id="tanchukuang">
  		<div class="closeButton">
  			<a onclick="hide1()" onmouseover="changeColor()">关闭</a>
  		</div>
  		<b id="description_title">添加一段描述吧！</b>
  		<textarea id="wenbenkuang" name="description_fu"></textarea><br>
  		<input type="hidden" id="questionid" value=""/>
 		<input type="button" value="确定"  id="okButton"/>
 		<input type="button" value="取消" onclick="hide1()" id="notOkButton"/>
 	</div>
	</section> </section> </section> </section> </section> </section> <script src="${ctx }/js/app.v2.js"></script> <!-- Bootstrap --> <!-- App -->
	<script src="${ctx }/js/charts/easypiechart/jquery.easy-pie-chart.js"
		cache="false"></script> <script
		src="${ctx }/js/charts/sparkline/jquery.sparkline.min.js"
		cache="false"></script> <script
		src="${ctx }/js/charts/flot/jquery.flot.min.js" cache="false"></script>
	<script src="${ctx }/js/charts/flot/jquery.flot.tooltip.min.js"
		cache="false"></script> <script
		src="${ctx }/js/charts/flot/jquery.flot.resize.js" cache="false"></script>
	<script src="${ctx }/js/charts/flot/jquery.flot.grow.js" cache="false"></script>
	<script src="${ctx }/js/charts/flot/demo.js" cache="false"></script> <script
		src="${ctx }/js/calendar/bootstrap_calendar.js" cache="false"></script>
	<script src="${ctx }/js/calendar/demo.js" cache="false"></script> <script
		src="${ctx }/js/sortable/jquery.sortable.js" cache="false"></script>
</body>
</html>
