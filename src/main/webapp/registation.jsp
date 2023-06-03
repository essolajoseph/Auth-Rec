<%--
  Created by IntelliJ IDEA.
  User: DUMBRESH
  Date: 2023-04-11
  Time: 9:24 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script>
        function validate()
        {
            var nom= document.form.nom.value;
            var prenom = document.form.prenom.value;
            var age= document.form.age.value;
            var matricule= document.form.matricule.value;

            if (nom==null || nom=="")
            {
                alert("Name can't be blank");
                return false;
            }
            else if (prenom==null || prenom=="")
            {
                alert("Firstname can't be blank");
                return false;
            }
            else if (age==0 || age=="")
            {
                alert("Username can't be blank");
                return false;
            }
            else if(matricule.length<7||matricule.length>7)
            {
                alert("matricule must be at least 6 characters long.");
                return false;
            }
        }
    </script>
</head>
<body>
<center><h2>Enregistrement d'un etudiant</h2></center>
<form name="form" action="EtudiantServlet" method="post" onsubmit="return validate()">
    <table align="center">
        <tr>
            <td>Nom</td>
            <td><input type="text" name="nom" /></td>
        </tr>
        <tr>
            <td>Prenom</td>
            <td><input type="text" name="prenom" /></td>
        </tr>
        <tr>
            <td>Age</td>
            <td><input type="text" name="age" /></td>
        </tr>
        <tr>
            <td>Matricule</td>
            <td><input type="text" name="matricule" /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Register"></input><input
                    type="reset" value="Reset"></input></td>
        </tr>
    </table>
</form>
</body>
</html>
