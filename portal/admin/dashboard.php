<?php include '../../config/functions.php'?>
<?php 
if($_SESSION['admin_id'] == 0) {
    header('location: index.php');
}

if(isset($_GET['logout']) == 'true') {
    unset($_SESSION['owners_id']);
    header('location:index.php');
}
?>
<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">

    <title>Portal - Admin </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="apple-touch-icon" href="../assets/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="../assets/images/adl-icon.ico">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="../assets/css/site.min.css">

    <!-- Plugins -->
    <link rel="stylesheet" href="../assets/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="../assets/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="../assets/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="../assets/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="../assets/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="../assets/vendor/flag-icon-css/flag-icon.css">

    <link rel="stylesheet" href="../assets/vendor/datatables.net-bs4/dataTables.bootstrap4.css">

    <!-- Sweet JS Alerts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- Fonts -->
    <link rel="stylesheet" href="../assets/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="../assets/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
    <script src="../assets/vendor/breakpoints/breakpoints.js"></script>
   <script>
       function submitForm(form){
          swal({
              title: "Are you sure?",
              text:  "Do you want to logout?",
              icon: "warning",
              buttons: true,
              dangerMode: true,
          })
          .then((isOkay) => {
              if (isOkay){
             window.location = "?logout=true";
            }
          });
          return false;
       }
   </script>
   
    <script>
        Breakpoints();
    </script>
</head>

<body class="animsition site-navbar-small ">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega navbar-inverse" role="navigation">

        <div class="navbar-header">
            <button type="button" class="navbar-toggler hamburger hamburger-close navbar-toggler-left hided"
                data-toggle="menubar">
                <span class="sr-only">Toggle navigation</span>
                <span class="hamburger-bar"></span>
            </button>
            <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-collapse"
                data-toggle="collapse">
                <i class="icon wb-more-horizontal" aria-hidden="true"></i>
            </button>
            <a class="navbar-brand navbar-brand-center" href="javascript:void(0)">
                <span class="navbar-brand-text hidden-xs-down"> ABC CAR RENTAL INC</span>
            </a>
        </div>

        <div class="navbar-container container-fluid">
            <!-- Navbar Collapse -->
            <div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
                <!-- Navbar Toolbar -->
                <ul class="nav navbar-toolbar">
                    <li class="nav-item hidden-float" id="toggleMenubar">
                        <a class="nav-link" data-toggle="menubar" href="#" role="button">
                            <i class="icon hamburger hamburger-arrow-left">
                                <span class="sr-only">Toggle menubar</span>
                                <span class="hamburger-bar"></span>
                            </i>
                        </a>
                    </li>
                </ul>
                <!-- End Navbar Toolbar -->

                <!-- Navbar Toolbar Right -->
                <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
                    <li class="nav-item dropdown">
                        <a class="nav-link navbar-avatar" data-toggle="dropdown" href="#" aria-expanded="false"
                            data-animation="scale-up" role="button">
                            <span class="avatar avatar-online">
                                <img src="../assets/portraits/21.jpg" alt="...">
                                <i></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" href="profile.php" role="menuitem"><i class="icon wb-user"
                                    aria-hidden="true"></i> Profile</a>
                            <a class="dropdown-item" href="?logout=true" onclick="return submitForm(this);" role="menuitem"><i class="icon wb-power"
                                    aria-hidden="true"></i> Logout</a>
                        </div>
                    </li>

                </ul>
                <!-- End Navbar Toolbar Right -->
            </div>
            <!-- End Navbar Collapse -->

        </div>
    </nav>
    <div class="site-menubar site-menubar-light">
        <div class="site-menubar-body">
            <div>
                <div>
                    <ul class="site-menu" data-plugin="menu">
                        <li class="site-menu-category">General</li>

                        <li class="dropdown site-menu-item active">
                            <a data-toggle="dropdown" href="dashboard.php">
                                <span class="site-menu-title">Dashboard</span>
                            </a>
                        </li> 

                        <!-- <li class="dropdown site-menu-item ">
                            <a data-toggle="dropdown" href="owners.php">
                                <span class="site-menu-title">Owners</span>
                            </a>
                        </li>

                        <li class="dropdown site-menu-item">
                            <a data-toggle="dropdown" href="customers.php">
                                <span class="site-menu-title">Customers</span>
                            </a>
                        </li> -->

                        <li class="dropdown site-menu-item">
                            <a data-toggle="dropdown" href="editpage.php">
                                <span class="site-menu-title">Edit Page</span>
                            </a>
                        </li>
                        <li class="dropdown site-menu-item position-relative">
                            <div style="position: absolute; border-radius: 50%; background-color: red; color: #fff; width: 20px; height: 20px; text-align: center; right: 0;"><?=countMessages(); ?></div>
                            <a data-toggle="dropdown" href="messages.php">
                                <span class="site-menu-title">Messages</span>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Page -->
    <div class="page">
        <div class="page-content">
            <div class="panel">
                <header class="panel-heading">
                    <div class="panel-actions"></div>
                    <h3 class="panel-title">Accounts</h3>
                </header>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-4" >
                            <div class="card" style="background-color: #3e8ef7;">
                                <div class="card-body position-relative">
                                    <h2 class="text-white"><?php $i=1; foreach(get_all_total_profit_buycredits() as $totalprofit) { echo "₱ ".number_format($totalprofit['totalprofitcredits'],2); } ?></h2>
                                    <h4 class="text-white">Total Profit</h4>
                                    <a href="../totalProfits.php" target="blank" style="color: #fff; position: absolute; right: 5%; top: 10%;"><i class="fa-solid fa-print" style="font-size: 1.3rem;"></i></a>

                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-lg-4" data-toggle="modal" data-target="#approved" style="cursor: pointer;">
                            <div class="card" style="background-color: #465985;">
                                <div class="card-body">
                                    <h2 class="text-white"><?php $i=1; foreach(get_all_accounts_approved() as $totalapproved) { echo $totalapproved['totalapproved']; } ?></h2>
                                    <h4 class="text-white">Total Accounts Approved</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4" data-toggle="modal" data-target="#notapproved" style="cursor: pointer;">
                            <div class="card" style="background-color: #9ec556;">
                                <div class="card-body">
                                   <h2 class="text-white"><?php $i=1; foreach(get_all_accounts_not_approved() as $totalnotapproved) { echo $totalnotapproved['totalnotapproved']; } ?></h2>
                                    <h4 class="text-white">Total Accounts Not Approved</h4>
                                </div>
                            </div>
                        </div> -->
                        <div class="col-lg-4" style="cursor: pointer;">
                            <a href="approvedaccounts.php" style="text-decoration: none;">                                                                    
                                <div class="card" style="background-color: #465985;">
                                    <div class="card-body">
                                        <h2 class="text-white"><?php $i=1; foreach(get_all_accounts_approved() as $totalapproved) { echo $totalapproved['totalapproved']; } ?></h2>
                                        <h4 class="text-white">Approved Accounts</h4>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4" style="cursor: pointer;">
                            <a href="notapprovedaccounts.php" style="text-decoration: none;">   
                                <div class="card" style="background-color: #9ec556;">
                                    <div class="card-body">
                                       <h2 class="text-white"><?php $i=1; foreach(get_all_accounts_not_approved() as $totalnotapproved) { echo $totalnotapproved['totalnotapproved']; } ?></h2>
                                        <h4 class="text-white">Pending Accounts</h4>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4" style="cursor: pointer;">
                            <a href="rejectedaccounts.php" style="text-decoration: none;">   
                                <div class="card" style="background-color: #4CC6BF;">
                                    <div class="card-body">
                                       <h2 class="text-white"><?php $i=1; foreach(get_all_accounts_rejected() as $totalnotapproved) { echo $totalnotapproved['totalrejected']; } ?></h2>
                                        <h4 class="text-white">Rejected Accounts</h4>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4" style="cursor: pointer;">
                            <a href="reqmacro.php" style="text-decoration: none;">   
                                <div class="card" style="background-color: #ff6100;">
                                    <div class="card-body">
                                       <h2 class="text-white"><?php $i=1; foreach(get_all_request_macro() as $totalreqmacro) { echo $totalreqmacro['totalreqmacro']; } ?></h2>
                                        <h4 class="text-white">Request Macro Accounts</h4>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4" style="cursor: pointer;">
                            <a href="reqcredits.php" style="text-decoration: none;">   
                                <div class="card" style="background-color: #3C79B7;">
                                    <div class="card-body">
                                       <h2 class="text-white"><?php $i=1; foreach(get_all_accounts_requestCredits() as $totalreqcredits) { echo $totalreqcredits['totalrequestcredits']; } ?></h2>
                                        <h4 class="text-white">Request Credits</h4>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div style="float: right; margin-left: 30px;">
                <h5>Daily Profit: <b><?php getDailyProfit_admin();?></b></h5>
            </div>
            <div style="float: right; margin-left: 30px;">
                <h5>Weekly Profit: <b><?php getWeeklyProfit_admin(); ?></b> </h5>
            </div>
            <div style="float: right; margin-left: 30px;">
                <h5>Monthly Profit: <b><?php getMonthlyProfit_admin(); ?></b></h5>
            </div>

            <div id="myChart"></div>
        </div>
    </div>
    
    <!-- End Page -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script>
   var options = {
          series: [
          {
            name: "High - 2013",
            data: [ <?php getDayProfit_admin("Monday");
              echo ",";
              getDayProfit_admin("Tuesday");
              echo ",";
              getDayProfit_admin("Wednesday");
              echo ",";
              getDayProfit_admin("Thursday");
              echo ",";
              getDayProfit_admin("Friday");
              echo ",";
              getDayProfit_admin("Saturday");
              echo ",";
              getDayProfit_admin("Sunday");
            ?> ]
          },
        ],
          chart: {
          height: 350,
          type: 'line',
          dropShadow: {
            enabled: true,
            color: '#000',
            top: 18,
            left: 7,
            blur: 10,
            opacity: 0.2
          },
          toolbar: {
            show: false
          }
        },
        colors: ['#77B6EA', '#545454'],
        dataLabels: {
          enabled: true,
        },
        stroke: {
          curve: 'smooth'
        },
        title: {
          text: 'Daily Profits',
          align: 'left'
        },
        grid: {
          borderColor: '#e7e7e7',
          row: {
            colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
            opacity: 0.5
          },
        },
        markers: {
          size: 1
        },
        xaxis: {
          categories: ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"],
          title: {
            text: 'Days Profit'
          }
        },
        yaxis: {
          title: {
            text: 'Daily Profits'
          }
        },
        legend: {
          position: 'top',
          horizontalAlign: 'right',
          floating: true,
          offsetY: -25,
          offsetX: -5
        }
        };

        var chart = new ApexCharts(document.querySelector("#myChart"), options);
        chart.render();
    </script>

    <!-- Footer -->
    <footer class="site-footer">
        <div class="site-footer-legal">© <?=date('Y')?> <a href="javascript:void(0)">ABC Car Rental Inc.</a></div>
    </footer>
    <!-- Core  -->
    <script src="../assets/vendor/babel-external-helpers/babel-external-helpers.js"></script>
    <script src="../assets/vendor/jquery/jquery.js"></script>
    <script src="../assets/vendor/popper-js/umd/popper.min.js"></script>
    <script src="../assets/vendor/bootstrap/bootstrap.js"></script>
    <script src="../assets/vendor/animsition/animsition.js"></script>
    <script src="../assets/vendor/mousewheel/jquery.mousewheel.js"></script>
    <script src="../assets/vendor/asscrollbar/jquery-asScrollbar.js"></script>
    <script src="../assets/vendor/asscrollable/jquery-asScrollable.js"></script>

    <!-- Plugins -->
    <script src="../assets/vendor/switchery/switchery.js"></script>
    <script src="../assets/vendor/intro-js/intro.js"></script>
    <script src="../assets/vendor/screenfull/screenfull.js"></script>
    <script src="../assets/vendor/slidepanel/jquery-slidePanel.js"></script>

    <!-- Scripts -->
    <script src="../assets/js/Component.js"></script>
    <script src="../assets/js/Plugin.js"></script>
    <script src="../assets/js/Base.js"></script>
    <script src="../assets/js/Config.js"></script>

    <script src="../assets/js/Section/Menubar.js"></script>
    <script src="../assets/js/Section/Sidebar.js"></script>
    <script src="../assets/js/Section/PageAside.js"></script>
    <script src="../assets/js/Plugin/menu.js"></script>

    <script src="../assets/vendor/datatables.net/jquery.dataTables.js"></script>
    <script src="../assets/vendor/datatables.net-bs4/dataTables.bootstrap4.js"></script>

    <!-- Config -->
    <script src="../assets/js/config/colors.js"></script>
    <script src="../assets/js/config/tour.js"></script>
    <script>
        Config.set('assets', 'assets');
    </script>

    <!-- Page -->
    <script src="../assets/js/Site.js"></script>
    <script src="../assets/js/Plugin/asscrollable.js"></script>
    <script src="../assets/js/Plugin/slidepanel.js"></script>
    <script src="../assets/js/Plugin/switchery.js"></script>

    <script>
        (function (document, window, $) {
            'use strict';

            var Site = window.Site;
            $(document).ready(function () {
                Site.run();
            });
        })(document, window, jQuery);
    </script>

</body>

</html>


<!-- basic modal -->
<div class="modal fade" id="approved" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Accounts Approve</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body table-responsive">
        <table class="table">
            <tr>
                <th>Lastname</th>
                <th>Firstname</th>
                <th>Middlename</th>
                <th>Email</th>
                <th>Contact</th>
            </tr>
                <?php foreach(get_all_accounts_approved2() as $row) { ?>
                    <tr>
                        <td><?php echo $row['surname']; ?></td>
                        <td><?php echo $row['firstname']; ?></td>
                        <td><?php echo $row['middlename']; ?></td>
                        <td><?php echo $row['email']; ?></td>
                        <td><?php echo $row['contact']; ?></td>
                    </tr>
                <?php } ?>
            
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="notapproved" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Accounts Not Approve</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body table-responsive">
        <table class="table">
            <tr>
                <th>Lastname</th>
                <th>Firstname</th>
                <th>Middlename</th>
                <th>Email</th>
                <th>Contact</th>
            </tr>
                <?php foreach(get_all_accounts_notapproved2() as $row) { ?>
                    <tr>
                        <td><?php echo $row['surname']; ?></td>
                        <td><?php echo $row['firstname']; ?></td>
                        <td><?php echo $row['middlename']; ?></td>
                        <td><?php echo $row['email']; ?></td>
                        <td><?php echo $row['contact']; ?></td>
                    </tr>
                <?php } ?>
            
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
