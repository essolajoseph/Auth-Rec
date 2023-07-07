<!--
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="image/apple-icon.png">
  <link rel="icon" type="image/png" href="image/favicon.ico">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Dashboard</title>
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no" name="viewport" />
  <!-- Fonts and icons -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
  <link rel="stylesheet" href="css/nouislider.min.css">
  <link rel="stylesheet" href="css/style.css">
  <meta name="robots" content="noindex, follow">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/css/light-bootstrap-dashboard.css?v=2.0.0" rel="stylesheet" />
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
            <i class="fa fa-home"></i>
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
    <nav class="navbar navbar-expand-lg" color-on-scroll="500">
      <div class="container-fluid">
        <a class="navbar-brand" href="#pablo">Dashboard</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
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
                <li><a class="dropdown-item" href="#">Notification 1</a></li>
                <li><a class="dropdown-item" href="#">Notification 2</a></li>
                <li><a class="dropdown-item" href="#">Notification 3</a></li>
                <li><a class="dropdown-item" href="#">Notification 4</a></li>
                <li><a class="dropdown-item" href="#">Another notification</a></li>
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
                <a class="dropdown-item" href="#">Something elsehere</a>
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
            <p class="desc">Please enter your information and proceed to the next step so we can build your account</p>
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
                  <input type="date" class="form-control datetimepicker-input" data-target="#datePicker" name="date" />
                  <div class="input-group-append" data-target="#datePicker" data-toggle="datetimepicker">
                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                  </div>
                </div>
              </div>
            </div>
          </fieldset>
        </div>
      </form>
    </div>
  </div>
</div>
<!--   Core JS Files   -->
<script src="js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="js/core/popper.min.js" type="text/javascript"></script>
<script src="js/core/bootstrap.min.js" type="text/javascript"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<script src="js/plugins/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script>
  $(document).ready(function () {
    // JavaScript code
    //...
  });
</script>
</body>
</html>
