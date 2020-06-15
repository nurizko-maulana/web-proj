<?php 
session_start();

require_once "../login/authCookieSessionValidate.php";

if(!$isLoggedIn) {
    header("Location: ../login");
}
?>
<!--

=========================================================
* Now UI Dashboard - v1.5.0
=========================================================

* Product Page: https://www.creative-tim.com/product/now-ui-dashboard
* Copyright 2019 Creative Tim (http://www.creative-tim.com)

* Designed by www.invisionapp.com Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Infinity Accommodation
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-mini">
          ITC
        </a>
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
          InfiniTea Collages
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="./studentpage.php">
              <i class="now-ui-icons design_app"></i>
              <p>List Of Collages</p>
            </a>
          </li>
          <li>
            <a href="./studentapplication.html">
              <i class="now-ui-icons education_atom"></i>
              <p>Applicantion</p>
            </a>
          </li>
          <li>
            <a href="./studentprofile.html">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li>
            <a href="../login/logout.php">
              <i class="now-ui-icons media-1_button-power"></i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </div>
    </div>  
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">List Of Collages</a>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-lg">
          <div class="container text-center ">
            <h1 class="display-4 text-white">Our Amazing Rooms</h1>
            <p class="lead text-white">For your comfort and satisfaction.</p>
          </div>
      </div>
      <div class="content">
        <div class="row">
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college1.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">PREMIUM</h5>
                <h4 class="card-title">Edo's College</h4>
                <p class="card-text">Price : RM1000</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college2.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">STANDARD</h5>
                <h4 class="card-title">Edo's College</h4>
                <p class="card-text">Price : RM800</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college3.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">BASIC</h5>
                <h4 class="card-title">Edo's College</h4>
                <p class="card-text">Price : RM600</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college1.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">PREMIUM</h5>
                <h4 class="card-title">Mokhtar's College</h4>
                <p class="card-text">Price : RM1000</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college2.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">STANDARD</h5>
                <h4 class="card-title">Mokhtar's College</h4>
                <p class="card-text">Price : RM800</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college3.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">BASIC</h5>
                <h4 class="card-title">Mokhtar's College</h4>
                <p class="card-text">Price : RM600</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college1.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">PREMIUM</h5>
                <h4 class="card-title">Raihan's College</h4>
                <p class="card-text">Price : RM1000</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college2.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">STANDARD</h5>
                <h4 class="card-title">Raihan's College</h4>
                <p class="card-text">Price : RM800</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4">
            <div class="card img-fluid">
            <img class="card-img-top" src="../assets/img/college3.jpg" alt="Card image" style="width:100%">
              <div class="card-header">
                <h5 class="card-category">BASIC</h5>
                <h4 class="card-title">Raihan's College</h4>
                <p class="card-text">Price : RM600</p>
                <a href="#" class="btn btn-primary">BOOK</a>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Available : 10
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class=" container-fluid ">
          <nav>
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="http://presentation.creative-tim.com">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright" id="copyright">
            &copy; <script>
              document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script>, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
</body>

</html>