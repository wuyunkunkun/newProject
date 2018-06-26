	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>自动组卷</title>
<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="${ctx }/css/app.v2.css" type="text/css" />
<link rel="stylesheet" href="${ctx }/js/calendar/bootstrap_calendar.css" type="text/css" cache="false" />
<link href="${ctx }/css/zujuan_kecheng.css" rel="stylesheet" type="text/css">

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
            		<div class="m-b-md">
              			<h3 class="m-b-none"><a href="${ctx }/exam/zujuan_kecheng.jsp">组卷系统</a></h3>
              			<small>Welcome back, ${teacher.name }</small>
            		</div>
            		<section class="panel panel-default">
            		<div class="choose">
		请选择课程：
	</div>
	 <c:forEach items="${courses }" var="cs">
     	<div class="course">
     	<c:if test="${cs.coursePic!=null && cs.coursePic!=''}">
			<a href="${ctx }/choose/course?id=${cs.id}" style="background-image:url(${ctx }/upload/${cs.coursePic} )">
			</a>
		</c:if>
		<c:if test="${cs.coursePic==null || cs.coursePic==''}">
		<a href="${ctx }/choose/course?id=${cs.id}" style="background-image:url(../images/pic3.png )">
				${cs.name}
			</a>
		</c:if>
		</div>
    </c:forEach>
                    </section>
        		</section>
        	</section>
        </section>
	</section>
</section>
<script src="${ctx }/js/app.v2.js"></script> <!-- Bootstrap --> <!-- App --> <script src="${ctx }/js/charts/easypiechart/jquery.easy-pie-chart.js" cache="false"></script> <script src="${ctx }/js/charts/sparkline/jquery.sparkline.min.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.min.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.tooltip.min.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.resize.js" cache="false"></script> <script src="${ctx }/js/charts/flot/jquery.flot.grow.js" cache="false"></script> <script src="${ctx }/js/charts/flot/demo.js" cache="false"></script> <script src="${ctx }/js/calendar/bootstrap_calendar.js" cache="false"></script> <script src="${ctx }/js/calendar/demo.js" cache="false"></script> <script src="${ctx }/js/sortable/jquery.sortable.js" cache="false"></script>
</body>
</html>