<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>boardList.jsp</title>
  <script>
    'use strict';
    
    function pageChange() {
    	let pageSize = document.getElementById("pageSize").value;
    	location.href = "boardList.bo?pageSize="+pageSize;
    }
  </script>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<%@ include file="/include/nav.jsp" %>
<p><br/></p>
<div class="container">
  <h2 class="text-center">게 시 판 리 스 트</h2>
  <div class="row">
    <div class="col text-start"><a href="boardInput.bo" class="btn btn-success btn-sm mb-1">글쓰기</a></div>
    <div class="col text-end">
    	<select name="pageSize" id="pageSize" onchange="pageChange()">
    	  <option ${vos[0].pageSize==5  ? 'selected' : ''}>5</option>
    	  <option ${vos[0].pageSize==10 ? 'selected' : ''}>10</option>
    	  <option ${vos[0].pageSize==15 ? 'selected' : ''}>15</option>
    	  <option ${vos[0].pageSize==20 ? 'selected' : ''}>20</option>
    	  <option ${vos[0].pageSize==30 ? 'selected' : ''}>30</option>
    	</select>
    </div>
  </div>
  <table class="table table-hover">
    <tr class="table-secondary">
      <th>글번호</th>
      <th>글제목</th>
      <th>글쓴이</th>
      <th>글쓴날짜</th>
      <th>조회수(좋아요)</th>
    </tr>
    <%-- <c:set var="cnt" value="${fn:length(vos)}"/> --%>
    <c:forEach var="vo" items="${vos}" varStatus="st">
      <tr>
        <td>${fn:length(vos) - st.index}</td>
        <td>
          <a href="boardContent.bo?idx=${vo.idx}">${vo.title}</a>
        </td>
        <td>${vo.nickName}</td>
        <td>${vo.wDate}</td>
        <td>${vo.readNum}</td>
      </tr>
    </c:forEach>
  </table>
</div>
<p><br/></p>
<%@ include file="/include/footer.jsp" %>
</body>
</html>