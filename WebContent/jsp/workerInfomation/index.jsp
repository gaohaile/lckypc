<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:include page="/jsp/top.jsp" />
<section id="woin" class="main" ng-app="woin" style="min-height: 40px;">
	<div ng-view></div>
</section>

<jsp:include page="/jsp/left.jsp" />
<jsp:include page="/jsp/footer.jsp" />

<script src="${ctx}/js/app/workerInfo.js"></script>


<script>
	$(function(){
		$('dd').find('ul').css("display","none");
		$('#system-ul').css("display","block");
		var currentPage = sessionStorage.getItem("currentPage");
		if(currentPage){
			$("#"+currentPage).addClass("active");
		}
	})
</script>
</body>
</html>

