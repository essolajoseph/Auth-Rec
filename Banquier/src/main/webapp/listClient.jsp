<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Affichage des données</title>
</head>
<body>
<h1>Données du formulaire</h1>
<c:forEach items="${requestScope.clients}" var="client">
    <p><c:out value="${client.getNom()}"></c:out></p
    <p><c:out value="${client.getPrenom()}"></c:out></p>
    <p><c:out value="${client.getNumero()}"></c:out></p>
</c:forEach>
</body>
</html>