<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="<%=request.getContextPath()%>/">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">Guest</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Board</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">PDS</a>
        </li>  
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Study</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/study2/jstl/JstlMenu">JSTL</a></li>
            <li><a class="dropdown-item" href="#">aJax</a></li>
            <li><a class="dropdown-item" href="#">Test</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>