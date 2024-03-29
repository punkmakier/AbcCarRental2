<?php include '../../config/functions.php'?>
<?php 


    if($_SESSION['owners_id'] == 0) {
        header('location: index.php');
    } else {
        $data = get_account_details($_SESSION['owners_id']);
        if($data['user_type'] == 'Macro' || $data['user_type'] == 'Micro') {
        } else {
            unset($_SESSION['owners_id']);
            header('location: index.php');
        }
    }



    if(get_transaction_if_exists($_GET['id']) > 0) {
        $data = get_transaction_details($_GET['id']);
        $vehicle = get_vehicles_details($data['cars_id']);
    } else {
        header('location: my-reservation.php');
    }

    if(@$_GET['action'] == 'cancel') {
        global $db;
        $reason = post('reason');
        update_transactions($_GET['id'],$reason);
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

    <title>Portal - Reservations</title>

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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <!-- Sweet JS Alerts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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



    <!-- Fonts -->
    <link rel="stylesheet" href="../assets/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="../assets/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
    <script src="../assets/vendor/breakpoints/breakpoints.js"></script>

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

                        <li class="dropdown site-menu-item">
                            <a data-toggle="dropdown" href="dashboard.php">
                                <span class="site-menu-title">Dashboard</span>
                            </a>
                        </li>
                        
                        <li class="dropdown site-menu-item active">
                            <a data-toggle="dropdown" href="reservations.php">
                                <span class="site-menu-title">Reservations</span>
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
            <div class="row">
                <div class="col-md-4 col-12">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="row">

                                <div class="col-12">
                                <img src="<?=empty($vehicle['images']) ? 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg' : '../../images/vehicles/'.$vehicle['images']?>"
                                        style="width:100%" alt="" />
                                </div>

                                <div class="col-12">
                                    Vehicle: <?=$vehicle['manufacturer']?> <?=$vehicle['model']?> <?=$vehicle['year']?>
                                </div>

                                <div class="col-12">
                                    Number of Doors: <?=$vehicle['no_of_doors']?>
                                </div>

                                <div class="col-12">
                                    Fuel Tank Capacity: <?=$vehicle['fuel_tank_capacity']?>
                                </div>

                                <div class="col-12">
                                    Seating Capacity: <?=$vehicle['seating_capacity']?>
                                </div>

                                <div class="col-12">
                                    Transmission: <?=$vehicle['transmission_type']?>
                                </div>

                                <div class="col-12">
                                    Gear Box: <?=$vehicle['gear_box']?>
                                </div>

                                <?php if($data['reason'] != null) { ?>
                                <div class="col-12">
                                    <hr>
                                </div>

                                <div class="col-12">
                                    Reason for cancellation: <br><?=$data['reason']?>
                                </div>
                            <?php } ?>
                            </div>
                        </div>
                    </div>
                    
                </div>

                <div class="col-md-8 col-12">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">Purpose</label>
                                        <input type="text" class="form-control" readonly
                                            value="<?=$data['purpose']?>">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">Destination</label>
                                        <input type="text" class="form-control" readonly
                                            value="<?=$data['destination']?>">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">From - To</label>
                                        <input type="text" class="form-control" readonly
                                            value="<?=$data['from'].' - '.$data['to']?>">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">Rate Per Day</label>
                                        <input type="text" class="form-control" readonly
                                            value="₱<?=number_format($data['rate_per_day'],2)?>">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">Days Rented</label>
                                        <input type="text" class="form-control" readonly
                                            value="<?=($data['days_rented'])?>">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">Total</label>
                                        <input type="text" class="form-control" readonly
                                            value="₱<?=number_format($data['total'],2)?>">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">Reference</label>
                                        <input type="text" class="form-control" readonly
                                            value="<?=($data['reference'])?>">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="">Status</label>
                                        <input type="text" class="form-control" readonly value="<?=($data['status'])?>">
                                    </div>
                                </div>

                                <div class="col-12 text-right">
                                    <?php if($data['status'] == 'Approved' || $data['status'] == 'Disapproved' || $data['status'] == 'Paid' || $data['status'] == 'Cancelled') { 
                                            if($data['status'] == 'Approved'){ ?>
                                            <a id="paidBtn"   class="btn btn-success btn-sm text-white">Paid</a>
                                            <?php }
                                              
                                        ?>
                                    <?php } else { ?>
                                        <a id="approveBtn"   class="btn btn-success btn-sm text-white">Approve</a>
                                        <a id="disapproveBtn" class="btn btn-danger btn-sm text-white">Disapprove</a>

                                    <?php } ?>
                                    <a href="chat-customer.php?reference=<?=$data['reference']?>&id=<?=$_GET['id']?>" class="btn btn-primary btn-sm">Chat</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page -->

    <!-- Modal -->
    <form action="?id=<?=$_GET['id']?>&action=cancel" method="POST">
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Cancel Reservation</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label for="">Reason</label>
                                <textarea name="reason" class="form-control" style="resize:none" id="" rows="5"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                </div>
                </div>
            </div>
        </div>
    </form>


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
        Config.set('../assets', '../assets');
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

<script>
    $(document).ready(function(){
        $("#approveBtn").on("click",function(){
            swal({
              title: "Confirmation needed",
              text:  "Are you sure you want to approve this reservation?",
              icon: "warning",
              buttons: true,
              dangerMode: true,
          })
          .then((isOkay) => {
              if (isOkay){
                window.location.href="reservation-details.php?id=<?=$_GET['id']?>&customer=<?=$_GET['customer']?>&action=approve";
            }
          });
        })

        $("#disapproveBtn").on("click",function(){
            swal({
              title: "Confirmation needed",
              text:  "Are you sure you want to disapprove this reservation?",
              icon: "warning",
              buttons: true,
              dangerMode: true,
          })
          .then((isOkay) => {
              if (isOkay){
                window.location.href="reservation-details.php?id=<?=$_GET['id']?>&customer=<?=$_GET['customer']?>&action=disapprove";
            }
          });
        })

        $("#paidBtn").on("click",function(){
            swal({
              title: "Confirmation needed",
              text:  "Are you sure you want to mark this as paid?",
              icon: "warning",
              buttons: true,
              dangerMode: true,
          })
          .then((isOkay) => {
              if (isOkay){
                window.location.href="reservation-details.php?id=<?=$_GET['id']?>&customer=<?=$_GET['customer']?>&action=paid";
            }
          });
        })

    })
     
   </script>
</body>

</html>

<?php

 if(@$_GET['action'] == 'approve') {
        if(update_transaction_status($_GET['id'],$_GET['customer'],'Approved')){
            echo "<script>
            swal({
                title: 'Success',
                text:  'You approved this car reservation!',
                icon: 'success',
                button: true,
                dangerMode: true,
            })
            .then((isOkay) => {
                if (isOkay){
                    window.location.href='reservations.php';
              }
            });
            
            </script>";
        }
    }
    if(@$_GET['action'] == 'disapprove') {
        if(update_transaction_status($_GET['id'],$_GET['customer'],'Disapproved')){
            echo "<script>
            swal({
                title: 'Success',
                text:  'You disapproved this car reservation!',
                icon: 'success',
                button: true,
                dangerMode: true,
            })
            .then((isOkay) => {
                if (isOkay){
                    window.location.href='reservations.php';
              }
            });
            
            </script>";
        }
    }
    if(@$_GET['action'] == 'paid') {
        if(update_transaction_status($_GET['id'],$_GET['customer'],'Paid')){
            echo "<script>
            swal({
                title: 'Success',
                text:  'You mark up this transaction as PAID',
                icon: 'success',
                button: true,
                dangerMode: true,
            })
            .then((isOkay) => {
                if (isOkay){
                    window.location.href='reservations.php';
              }
            });
            
            </script>";
        }
    }


?>