<%--he above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  -->--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="image/apple-icon.png">
    <link rel="icon" type="image/png" href="image/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Dashboard</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- CSS Files -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="${pageContext.request.contextPath}/css/demo.css" rel="stylesheet" />
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-image="image/sidebar-5.jpg">
        <!--
    Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

    Tip 2: you can also add an image using data-image tag
    -->
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    Auth-rec
                </a>
            </div>
            <ul class="nav">
                <li class="nav-item active">
                    <a class="nav-link" href="registation.jsp">
                        <i class="fa fa-home "></i>
                        <p>Home</p>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="table.jsp">
                        <i class="fa fa-user"></i>
                        <p>List of Students</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo"> Dashboard </a>
                <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-toggle="dropdown">
                                <i class="nc-icon nc-palette"></i>
                                <span class="d-lg-none">Dashboard</span>
                            </a>
                        </li>
                        <li class="dropdown nav-item">
                            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                <i class="nc-icon nc-planet"></i>
                                <span class="notification">5</span>
                                <span class="d-lg-none">Notification</span>
                            </a>
                            <ul class="dropdown-menu">
                                <a class="dropdown-item" href="#">Notification 1</a>
                                <a class="dropdown-item" href="#">Notification 2</a>
                                <a class="dropdown-item" href="#">Notification 3</a>
                                <a class="dropdown-item" href="#">Notification 4</a>
                                <a class="dropdown-item" href="#">Another notification</a>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nc-icon nc-zoom-split"></i>
                                <span class="d-lg-block">&nbsp;Search</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#pablo">
                                <span class="no-icon">Account</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="no-icon">Dropdown</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pablo">
                                <span class="no-icon">Log out</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card ">
                            <div class="card-header ">
                                <h4 class="card-title">Scan Qr code </h4>
                                <p class="card-category">To unroll Student</p>
                            </div>
                            <div class="card-body ">
                                <div name="reader" id="reader" width="600px"></div>
                                <form action="EtudiantServlet" method="post" id="formQr">
                                    <input type="hidden" name="data" id="data">
                                </form>
                                <hr>
                                <div class="stats">
                                    <i class="fa fa-clock-o"></i> Campaign sent 2 days ago
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card ">
                            <div class="card-header ">
                                <h4 class="card-title">Information of Student</h4>

                            </div>
                            <div class="card-body ">
                                <div  id="info" >
                                <ol class="list-group">
                                    <li class="list-group-item" id="name">Premier élément</li>
                                    <li class="list-group-item" id="pre">Deuxième élément</li>
                                    <li class="list-group-item" id="dn">Troisième élément</li>
                                    <li class="list-group-item" id="mat">Premier élément</li>
                                    <li class="list-group-item" id="niv">Deuxième élément</li>
                                    <li class="list-group-item" id="fil">Troisième élément</li>
                                </ol>

                                </div>
                                <hr>
                                <form action="SaveEtudiantServlet" method="post" id="formSend">
                                    <input type="hidden" name="nom" id="nom">
                                    <input type="hidden" name="prenom" id="prenom">
                                    <input type="hidden" name="matricule" id="matricule">
                                    <input type="hidden" name="date_naissance" id="date_naissance">
                                    <input type="hidden" name="filiere" id="filiere">
                                    <input type="hidden" name="niveau" id="niveau">

                                    <button type="submit" class="btn btn-primary">Inscrire l'etudiant </button>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav>
                    <ul class="footer-menu">
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Blog
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-center">
                        ©
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                    </p>
                </nav>
            </div>
        </footer>
    </div>
</div>

</body>
<!--   Core JS Files   -->
<script>
    document.getElementById('info').style.display="none";
    document.getElementById('formSend').style.display="none";
</script>
<script src="js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="js/core/popper.min.js" type="text/javascript"></script>
<script src="js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="js/demo.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

        demo.showNotification();

    });
</script>

<script src="https://unpkg.com/html5-qrcode" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</script>

<script>
    // $('#result').val('test');
    function onScanSuccess(decodedText, decodedResult) {
        $('#result').val(decodedText);
        let id = decodedText;
        html5QrcodeScanner.clear().then(_ => {
            $.ajax({
                url: "EtudiantServlet",
                method: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    data: id // Utilisation de "data" au lieu de "qr_code"
                },
                success: function(response) {

                    document.getElementById('info').style.display="block";
                    document.getElementById('formSend').style.display="block";
                    console.log(response);
                    alert(response.message);
                        const nom = document.getElementById("name");
                        const prenom = document.getElementById("pre");
                        const matricule = document.getElementById("mat");
                        const niveau = document.getElementById("niv");
                        const filiere = document.getElementById("fil");
                        const date=document.getElementById("dn");
                        //donner envoyer a la base de donnees
                    let etudiant=response.data;
                   document.getElementById("nom").value=etudiant.nom;
                   document.getElementById("prenom").value=etudiant.prenom;
                   document.getElementById("matricule").value=etudiant.matricule;
                    document.getElementById("niveau").value=etudiant.niveau;
                   document.getElementById("filiere").value=etudiant.filiere;
                   document.getElementById("date_naissance").value=etudiant.date_naissance;

                        nom.innerHTML = "<strong>Nom :</strong> " + etudiant.nom;
                        prenom.innerHTML = "<strong>Prenom :</strong> " + etudiant.prenom;
                        matricule.innerHTML = "<strong>Matricule:</strong> " + etudiant.matricule;
                        niveau.innerHTML = "<strong>Niveau :</strong> " + etudiant.niveau;
                        filiere.innerHTML = "<strong>Filiere :</strong> " + etudiant.filiere;
                        date.innerHTML = "<strong>Date Naissance :</strong> " + etudiant.date_naissance;

                },
                error: function(error) {
                    alert('Oops! Something went wrong.');
                }
            });
        }).catch(error => {
            alert('Oops!.');
        });
    }

    function onScanFailure(error) {
        // handle scan failure, usually better to ignore and keep scanning.
        // for example:
        // console.warn(`Code scan error = ${error}`);
    }

    let html5QrcodeScanner = new Html5QrcodeScanner(
        "reader",
        { fps: 10, qrbox: {width: 250, height: 250} },
        /* verbose= */ false);
    html5QrcodeScanner.render(onScanSuccess, onScanFailure);
</script>
</html>
