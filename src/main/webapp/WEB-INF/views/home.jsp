<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<h1>Urun Listesi</h1>

	<c:if test="${not empty ls }">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#uid</th>
      <th scope="col">ukid</th>
      <th scope="col">ukaid</th>
      <th scope="col">uadi</th>
      <th scope="col">udetay</th>
      <th scope="col">ufiyat</th>
      <th scope="col">utarih</th>
      <th scope="col">kaAdi</th>
      <th scope="col">kamAdi</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="item" items="${ls }">
    <tr>
      <td scope="row">${item.getUid() }</td>
      <td scope="row">${item.getUkid() }</td>
      <td scope="row">${item.getUkaid() }</td>
      <td scope="row">${item.getUadi() }</td>
      <td scope="row">${item.getUdetay() }</td>
      <td scope="row">${item.getUfiyat() }</td>
      <td scope="row">${item.getUtarih() }</td>
      <td scope="row">${item.getKaAdi() }</td>
      <td scope="row">${item.getKamAdi() }</td>
      
      
    </tr>
    </c:forEach>
  </tbody>
</table>
</c:if>
</div>
</body>
</html>
