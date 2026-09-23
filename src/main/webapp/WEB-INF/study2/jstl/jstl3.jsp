<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>jstl3.jsp</title>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<%@ include file="/include/nav.jsp" %>
<p><br/></p>
<div class="container">
  <h2>jstl3.jsp</h2>
  <hr/>
  <div class="text-end"><a href="<%=request.getContextPath()%>/study2/jstl/JstlMenu" class="btn btn-warning">돌아가기</a></div>
  <hr/>
  <div>str : ${str}</div>
  <b>문자함수</b><br/>
  1-1. str변수 값의 길이? ${fn:length(str)}<br/>
  1-2. habbys변수 값의 길이? ${fn:length(habbys)}<br/>
  1-3. vos변수 값의 길이? ${fn:length(vos)}<br/>
  <hr/>
  2-1. str변수안의 문자를 대문자로? ${fn:toUpperCase(str)}<br/>
  2-2. str변수안의 문자를 소문자로? ${fn:toLowerCase(str)}<br/>
  <hr/>
  3-1. 특정문자열 추출? ${fn:substring(str, 0, 5)}<br/>
  3-2. 특정문자열 추출? ${fn:substring(str, 3, 5)}<br/>
  3-3. 특정문자열 추출? ${fn:substring(str, 3, -1)}<br/>
  <hr/>
  4-1. 특정 문자열 찾기? ${fn:indexOf(str, 'come')}<br/>
  4-2. 특정 문자열 찾기? ${fn:indexOf(str, 'kome')}<br/>
  <% String temp = "Welcome to USA!!!"; %>
  4-3. 특정 문자열 뒤에서 찾기? <%=temp.lastIndexOf("come")%><br/>
  <hr/>
  5-1. 특정문자를 기준으로 자라내기? ${fn:split(tel, '-')}<br/>
  <c:set var="imsi" value=""/>
  <c:forEach var="t" items="${tel}">
    <c:set var="imsi" value="${imsi}-${t}"/>
  </c:forEach>
  전화번호 : ${imsi} : ${fn:substring(imsi, 1, -1)}<br/>
  <hr/>
  <h4>형식을 지정한 출력(format)</h4>
  <c:set var="su1" value="1234567"/>
  <c:set var="su2" value="1234.567"/>
  <div>
    su1 : ${su1} , <fmt:formatNumber value="${su1}"></fmt:formatNumber><br/>
    su2 : ${su2} , <fmt:formatNumber value="${su2}" /><br/>
    su2 : ${su2} , <fmt:formatNumber value="${su2}" pattern="0,000"/><br/>
    su2 : ${su2} , <fmt:formatNumber value="${su2}" pattern="0,000.0"/><br/>
    <br/>
    원화 : <fmt:formatNumber value="${su1}" type="currency" /><br/>
    달러 : <fmt:formatNumber value="${su1}" type="currency" currencyCode="USD" /><br/>
    <br/>
    백분율 : <fmt:formatNumber value="${su2}" type="percent"/><br/>
    백분율 : <fmt:formatNumber value="${su2}" type="percent" pattern="0.0%"/><br/>
    <br/>
    오늘날짜 : ${today}<br/>
    오늘날짜 : <fmt:formatDate value="${today}"/><br/>
    오늘날짜 : <fmt:formatDate value="${today}" pattern="yyyy-MM-dd"/><br/>
    오늘날짜시간 : <fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss"/><br/>
    오늘날짜시간 : <fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm:ss"/><br/>
    오늘날짜시간 : <fmt:formatDate value="${today}" pattern="yy-M-d H:m:s"/><br/>
    <br/>
    월 : <fmt:formatDate value="${today}" pattern="M"/><br/>
    <br/>
    국가별 설정(로케일)<br/>
    톰캣서버의 기본 로케일 : <%=response.getLocale() %><br/>
    미국식으로 변경 : <fmt:setLocale value="en_US"/><br/>
    <fmt:formatNumber value="${su1}" type="currency" /><br/>
  </div>
</div>
<p><br/></p>
<%@ include file="/include/footer.jsp" %>
</body>
</html>