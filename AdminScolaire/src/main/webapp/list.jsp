<%--
  Created by IntelliJ IDEA.
  User: DUMBRESH
  Date: 2023-04-11
  Time: 10:10 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List des Etudiants</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div align="center">
  <table border="1" cellpadding="5">
  <h2>Liste des etudiants</h2>
    <tr>
      <th>Nom</th>
      <th>Prenom</th>
      <th>Age</th>
      <th>Matricule</th>
    </tr>
    <c:forEach items="${requestScope.etudiants}" var="etudiant">
      <tr>
        <td><c:out value="${etudiant.nom}" /></td>
        <td><c:out value="${etudiant.prenom}" /></td>
        <td><c:out value="${etudiant.age}" /></td>
        <td><c:out value="${etudiant.matricule}" /></td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
