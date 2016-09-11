<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="top.jsp"></jsp:include>
	<if test="${wishes !=null && wishes[0].imagespath!=null}"> <img
		src="${pageContext.request.contextPath}/${wishes[0].imagespath}">
	</if>
	</br>
	<a href="#sendbestwishes">--送祝福--</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/feedback/indexform">--建议反馈--</a>
	<br />
	<!-- ${feedback}</br> -->
	<c:if test="${wishes!= null || fn:length(wishes) > 0}">
		<c:forEach var="item" items="${wishes}">
			【${item.students}】送给【${item.teachers}】的祝福：&nbsp;&nbsp;<a
				href="${pageContext.request.contextPath}/teacher/update/${item.id}">${item.goodpoints}<img
		src="${pageContext.request.contextPath}/images/good.png" width="5%" height="5%"></a></br>
			${fn:substring(item.content, 0, 200)} 
			</br>
			祝福日期：<fmt:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></br>
			<hr />
		</c:forEach>
	</c:if>
	<c:if test="${wishes== null || fn:length(wishes) == 0}">
--暂无祝福--</br>
	</c:if>
	</br>
	<form action="${pageContext.request.contextPath}/teacher/save"
		method="POST" name="sendwishes">
		送给<input type="text" name="teachers" value="大家">的祝福.</br> 祝: </br>
		<textarea rows="5" cols="50%" name="content">开心.快乐.实现.梦想</textarea>
		</br>我是: <input type="text" name="students" value="谱绿.暖心"> <input
			type="submit" value="送出祝福" id="submit">
	</form>
	</br>
	<jsp:include page="bottom.jsp"></jsp:include>
	</div>
</body>
</html>