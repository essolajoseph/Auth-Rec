<%--
  Created by IntelliJ IDEA.
  User: DUMBRESH
  Date: 2023-04-19
  Time: 9:53 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enregistrer un client</title>
</head>
<body>
<form action="ClientServlet" method="POST">
  <label for="nom">Nom :</label>
  <input type="text" id="nom" name="nom"><br><br>
  <label for="prenom">Prénom :</label>
  <input type="text" id="prenom" name="prenom"><br><br>
  <label for="numero">Numero: </label>
  <input type="text" id="numero" name="numero"><br><br>
  <input type="submit" value="Envoyer">
</form>
</body>
</html>
