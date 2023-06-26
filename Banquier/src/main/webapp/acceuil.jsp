<%--he above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  -->--%>
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
  <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
  <link rel="stylesheet" href="css/nouislider.min.css">
  <link rel="stylesheet" href="css/css/style.css">
  <meta name="robots" content="noindex, follow">
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
          <a class="nav-link" href="dashboard.html">
            <i class="fa fa-home "></i>
            <p>Home</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="./user.html">
            <i class="fa fa-user"></i>
            <p>User Profile</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="./table.html">
            <i class="fa fa-table" aria-hidden="true"></i>

            <p>Table List</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="registation.jsp">
            <i class="fas fa-user-graduate"></i>
            <p>Enroll student</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="./maps.html">
            <i class="fa fa-map-marker"></i>

            <p>Maps</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="./notifications.html">
            <i class="fa fa-bell"></i>
            <p>Notifications</p>
          </a>
        </li>
        <li class="nav-item active active-pro">
          <a class="nav-link active" href="upgrade.html">
            <i class="nc-icon nc-alien-33"></i>
            <p>Upgrade to PRO</p>
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

      <form method="POST" id="signup-form" class="signup-form" action="PayementServlet">
        <div>
          <h3>Personal info</h3>
          <fieldset>
            <h2>Personal information</h2>
            <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
            <div class="fieldset-content">
              <div class="form-row">
                <label class="form-label">Name</label>
                <div class="form-flex">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" />
                    <span class="text-input">First</span>
                  </div>
                  <div class="form-group">
                    <input type="text" name="last_name" id="last_name" />
                    <span class="text-input">Last</span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" name="phone" id="phone" />
              </div>
              <div class="form-group">
                <label for="filiere" class="form-label">Filiere</label>
                <input type="text" name="filiere" id="filiere" />
              </div>
              <div class="form-group">
                <label for="niveau" class="form-label">Niveau</label>
                <input type="text" name="niveau" id="niveau" />
              </div>
              <div class="form-group">
                <label for="datePicker">Date:</label>
                <div class="input-group date" id="datePicker" data-target-input="nearest">
                  <input type="date" class="form-control datetimepicker-input" data-target="#datePicker" name="date"/>
                  <div class="input-group-append" data-target="#datePicker" data-toggle="datetimepicker">
                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="matricule" class="form-label">Matricule</label>
                <input type="text" name="matricule" id="matricule" />
              </div>
            </div>
          </fieldset>
          <h3>Connect Bank Account</h3>
          <fieldset>
            <h2>Connect Bank Account</h2>
            <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
            <div class="fieldset-content">
              <div class="form-group">
                <label for="find_bank" class="form-label">Find Your Bank</label>
                <div class="form-find">
                  <input type="text" name="find_bank" id="find_bank" placeholder="Ex. Techcombank" />
                  <input type="submit" value="Search" class="submit">
                  <span class="form-icon"><i class="zmdi zmdi-search"></i></span>
                </div>
              </div>
              <div class="choose-bank">
                <p class="choose-bank-desc">Or choose from these popular bank</p>
                <div class="form-radio-flex">
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_1" value="bank_1" checked="checked" />
                    <label for="bank_1"><img src="image/images/bank-1.jpg" alt=""></label>
                  </div>
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_2" value="bank_2" />
                    <label for="bank_2"><img src="image/images/bank-2.jpg" alt=""></label>
                  </div>
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_3" value="bank_3" />
                    <label for="bank_3"><img src="image/images/bank-3.jpg" alt=""></label>
                  </div>
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_4" value="bank_4" />
                    <label for="bank_4"><img src="image/images/bank-4.jpg" alt=""></label>
                  </div>
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_5" value="bank_5" />
                    <label for="bank_5"><img src="image/images/bank-5.jpg" alt=""></label>
                  </div>
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_6" value="bank_6" />
                    <label for="bank_6"><img src="image/images/bank-6.jpg" alt=""></label>
                  </div>
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_7" value="bank_7" />
                    <label for="bank_7"><img src="image/images/bank-7.jpg" alt=""></label>
                  </div>
                  <div class="form-radio-item">
                    <input type="radio" name="choose_bank" id="bank_8" value="bank_8" />
                    <label for="bank_8"><img src="image/images/bank-8.jpg" alt=""></label>
                  </div>
                </div>
              </div>
            </div>
          </fieldset>
          <h3>Set Financial Goals</h3>
          <fieldset>
            <h2>Set Financial Goals</h2>
            <p class="desc">Entrer les informations sur la transaction</p>
            <div class="fieldset-content">
              <div class="form-row">
                <label class="form-label">Name du Banquier</label>
                <div class="form-flex">
                  <div class="form-group">
                    <input type="text" name="firstname" id="firstname" />
                    <span class="text-input">First</span>
                  </div>
                  <div class="form-group">
                    <input type="text" name="lastname" id="lastname" />
                    <span class="text-input">Last</span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="agence" class="form-label">Agence</label>
                <input type="text" name="agence" id="agence" />
              </div>
              <div class="form-group">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" id="email" />
              </div>
              <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" id="password" />
              </div>

              <div class="form-group">
                <label for="datePicker">Date du jour :</label>
                <div class="input-group date" id="datejour" data-target-input="nearest">
                  <input type="date" class="form-control datetimepicker-input" data-target="#datePicker" name="datejour"/>
                  <div class="input-group-append" data-target="#datePicker" data-toggle="datetimepicker">
                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="montant" class="form-label">Montant de la transacion</label>
                <input type="number" name="montant" id="montant" />
              </div>
            </div>
          </fieldset>
        </div>
      </form>
    </div>
  </div>
</div>
<!--   -->
<!-- <div class="fixed-plugin">
<div class="dropdown show-dropdown">
    <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
    </a>

    <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Style</li>
        <li class="adjustments-line">
            <a href="javascript:void(0)" class="switch-trigger">
                <p>Background Image</p>
                <label class="switch">
                    <input type="checkbox" data-toggle="switch" checked="" data-on-color="primary" data-off-color="primary"><span class="toggle"></span>
                </label>
                <div class="clearfix"></div>
            </a>
        </li>
        <li class="adjustments-line">
            <a href="javascript:void(0)" class="switch-trigger background-color">
                <p>Filters</p>
                <div class="pull-right">
                    <span class="badge filter badge-black" data-color="black"></span>
                    <span class="badge filter badge-azure" data-color="azure"></span>
                    <span class="badge filter badge-green" data-color="green"></span>
                    <span class="badge filter badge-orange" data-color="orange"></span>
                    <span class="badge filter badge-red" data-color="red"></span>
                    <span class="badge filter badge-purple active" data-color="purple"></span>
                </div>
                <div class="clearfix"></div>
            </a>
        </li>
        <li class="header-title">Sidebar Images</li>

        <li class="active">
            <a class="img-holder switch-trigger" href="javascript:void(0)">
                <img src="../assets/img/sidebar-1.jpg" alt="" />
            </a>
        </li>
        <li>
            <a class="img-holder switch-trigger" href="javascript:void(0)">
                <img src="../assets/img/sidebar-3.jpg" alt="" />
            </a>
        </li>
        <li>
            <a class="img-holder switch-trigger" href="javascript:void(0)">
                <img src="..//assets/img/sidebar-4.jpg" alt="" />
            </a>
        </li>
        <li>
            <a class="img-holder switch-trigger" href="javascript:void(0)">
                <img src="../assets/img/sidebar-5.jpg" alt="" />
            </a>
        </li>

        <li class="button-container">
            <div class="">
                <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard" target="_blank" class="btn btn-info btn-block btn-fill">Download, it's free!</a>
            </div>
        </li>

        <li class="header-title pro-title text-center">Want more components?</li>

        <li class="button-container">
            <div class="">
                <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard-pro" target="_blank" class="btn btn-warning btn-block btn-fill">Get The PRO Version!</a>
            </div>
        </li>

        <li class="header-title" id="sharrreTitle">Thank you for sharing!</li>

        <li class="button-container">
            <button id="twitter" class="btn btn-social btn-outline btn-twitter btn-round sharrre"><i class="fa fa-twitter"></i> · 256</button>
            <button id="facebook" class="btn btn-social btn-outline btn-facebook btn-round sharrre"><i class="fa fa-facebook-square"></i> · 426</button>
        </li>
    </ul>
</div>
</div>
--><script data-cfasync="false" src="js/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
<script src="vendor/jquery-steps/jquery.steps.min.js"></script>
<script src="vendor/minimalist-picker/dobpicker.js"></script>
<script src="vendor/nouislider/nouislider.min.js"></script>
<script src="vendor/wnumb/wNumb.js"></script>
<script src="js/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7d28258b0faf03ca","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}' crossorigin="anonymous"></script>
<script>
  // Récupération des éléments HTML nécessaires
  const checkboxes = document.querySelectorAll('input[type="checkbox"]');
  const nombreInput = document.querySelector('input[name="nombre"]');

  // Fonction de mise à jour du texte des cases à cocher
  function updateCheckboxesText() {
    checkboxes.forEach((checkbox) => {
      const value = checkbox.value;
      const available = getAvailableTickets(value);
      checkbox.nextElementSibling.textContent = `${value} F CFA (${available} disponibles)`;
    });
  }

  // Fonction de récupération du nombre de billets disponibles pour un type de billet donné
  function getAvailableTickets(type) {
    switch (type) {
      case '500f':
        return 10 - nombreInput.value;
      case '1000f':
        return 5 - nombreInput.value;
      case '2000f':
        return 2 - nombreInput.value;
      default:
        return 0;
    }
  }

  // Écouteur d'événement pour la modification du nombre de billets
  nombreInput.addEventListener('input', () => {
    updateCheckboxesText();
  });

  // Initialisation du texte des cases à cocher
  updateCheckboxesText();
</script>
</body>
<!--   Core JS Files   -->
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


</html>


