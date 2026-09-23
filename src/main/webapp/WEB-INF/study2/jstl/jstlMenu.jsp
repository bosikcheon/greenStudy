<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>jstlMenu.jsp</title>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<%@ include file="/include/nav.jsp" %>
<p><br/></p>
<div class="container" style="height: 400px;">
  <h2>JSTL 학습</h2>
  <hr/>
  <div class="row text-center">
    <div class="col"><a href="<%=request.getContextPath()%>/study2/jstl/El" class="btn btn-success">EL</a></div>
    <div class="col"><a href="<%=request.getContextPath()%>/study2/jstl/Jstl1?sw=0" class="btn btn-primary">JSTL1</a></div>
    <div class="col"><a href="<%=request.getContextPath()%>/study2/jstl/Jstl2" class="btn btn-secondary">JSTL2</a></div>
    <div class="col"><a href="<%=request.getContextPath()%>/study2/jstl/Jstl3" class="btn btn-info">JSTL3</a></div>
  </div>
  <hr/>
</div>
<p><br/></p>
<%@ include file="/include/footer.jsp" %>
</body>
</html>