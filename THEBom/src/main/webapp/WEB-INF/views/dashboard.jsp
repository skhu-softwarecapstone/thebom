<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org" 
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout" layout:decorate="~{default}">
    <head>
        <title>Dashboard</title>
    </head>
    <body>
        <div layout:fragment="content">
            <h1 th:inline="text">Hello [[${#httpServletRequest.remoteUser}]]!</h1>
            <h2>This is your Admin Dashboard</h2>
        </div>
    </body>
</html>