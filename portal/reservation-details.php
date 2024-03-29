<?php include '../config/functions.php'?>
<?php 
error_reporting(0);
    if(get_transaction_if_exists($_GET['id']) > 0) {
        $data = get_transaction_details($_GET['id']);
        $vehicle = get_vehicles_details($data['cars_id']);
    } else {
        header('location: my-reservation.php');
    }

    if(isset($_GET['action']) == 'cancel') {
        global $db;
        $reason = post('reason');
        update_transactions($_GET['id'],$reason);
    }

    if(isset($_GET['logout']) == 'true') {
        unset($_SESSION['customer_id']);
        header('location:../');
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

    <title>Portal</title>

    <link rel="apple-touch-icon" href="assets/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="assets/images/adl-icon.ico">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="assets/css/site.min.css">

    <!-- Plugins -->
    <link rel="stylesheet" href="assets/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="assets/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="assets/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="assets/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="assets/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="assets/vendor/flag-icon-css/flag-icon.css">

    <link rel="stylesheet" href="assets/vendor/datatables.net-bs4/dataTables.bootstrap4.css">



    <!-- Fonts -->
    <link rel="stylesheet" href="assets/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="assets/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
    <script src="assets/vendor/breakpoints/breakpoints.js"></script>
    
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
                                <img src="assets/portraits/21.jpg" alt="...">
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
                            <a data-toggle="dropdown" href="my-reservation.php">
                                <span class="site-menu-title">My Reservation</span>
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
                            <?php 
                                $ShowImages = explode("&", $vehicle['images']);  
                            ?>
	
			
                        <div class="col-12">
                            <img src="<?=$vehicle['images'] == '' ? 'https://s7d1.scene7.com/is/image/hyundai/compare-vehicle-1225x619?wid=276&hei=156&fmt=png-alpha' : '../images/vehicles/'.$ShowImages[0]?>"
                            style="width:100%; cursor: pointer;" alt="" class='zoomable'/>
                            <img src="<?=$vehicle['images'] == '' ? 'https://s7d1.scene7.com/is/image/hyundai/compare-vehicle-1225x619?wid=276&hei=156&fmt=png-alpha' : '../images/vehicles/'.$ShowImages[1]?>"
                            style="width:30%;cursor: pointer;" alt="" class='zoomable'/>
                            <img src="<?=$vehicle['images'] == '' ? 'https://s7d1.scene7.com/is/image/hyundai/compare-vehicle-1225x619?wid=276&hei=156&fmt=png-alpha' : '../images/vehicles/'.$ShowImages[2]?>"
                            style="width:30%;cursor: pointer;" alt="" class='zoomable'/>
                            <img src="<?=$vehicle['images'] == '' ? 'https://s7d1.scene7.com/is/image/hyundai/compare-vehicle-1225x619?wid=276&hei=156&fmt=png-alpha' : '../images/vehicles/'.$ShowImages[3]?>"
                            style="width:30%;cursor: pointer;" alt="" class='zoomable'/>
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
                                    <?php if($data['status'] == 'Approved' || $data['status'] == 'Cancelled' || $data['status'] == 'Disapproved' || $data['status'] == 'Paid' ) { ?>
                                    <?php } else { ?>
                                        <a href="javascript:void(0)" data-toggle="modal" data-target="#exampleModal" class="btn btn-danger btn-sm">Cancel</a>
                                    <?php } ?>
                                    <a href="chat-owner.php?reference=<?=$data['reference']?>&id=<?=$_GET['id']?>" class="btn btn-primary btn-sm">Chat</a>
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
    <script src="assets/vendor/babel-external-helpers/babel-external-helpers.js"></script>
    <script src="assets/vendor/jquery/jquery.js"></script>
    <script src="assets/vendor/popper-js/umd/popper.min.js"></script>
    <script src="assets/vendor/bootstrap/bootstrap.js"></script>
    <script src="assets/vendor/animsition/animsition.js"></script>
    <script src="assets/vendor/mousewheel/jquery.mousewheel.js"></script>
    <script src="assets/vendor/asscrollbar/jquery-asScrollbar.js"></script>
    <script src="assets/vendor/asscrollable/jquery-asScrollable.js"></script>

    <!-- Plugins -->
    <script src="assets/vendor/switchery/switchery.js"></script>
    <script src="assets/vendor/intro-js/intro.js"></script>
    <script src="assets/vendor/screenfull/screenfull.js"></script>
    <script src="assets/vendor/slidepanel/jquery-slidePanel.js"></script>

    <!-- Scripts -->
    <script src="assets/js/Component.js"></script>
    <script src="assets/js/Plugin.js"></script>
    <script src="assets/js/Base.js"></script>
    <script src="assets/js/Config.js"></script>

    <script src="assets/js/Section/Menubar.js"></script>
    <script src="assets/js/Section/Sidebar.js"></script>
    <script src="assets/js/Section/PageAside.js"></script>
    <script src="assets/js/Plugin/menu.js"></script>

    <script src="assets/vendor/datatables.net/jquery.dataTables.js"></script>
    <script src="assets/vendor/datatables.net-bs4/dataTables.bootstrap4.js"></script>

    <!-- Config -->
    <script src="assets/js/config/colors.js"></script>
    <script src="assets/js/config/tour.js"></script>
    <script>
        Config.set('assets', 'assets');
    </script>

    <!-- Page -->
    <script src="assets/js/Site.js"></script>
    <script src="assets/js/Plugin/asscrollable.js"></script>
    <script src="assets/js/Plugin/slidepanel.js"></script>
    <script src="assets/js/Plugin/switchery.js"></script>

    <script>
        (function (document, window, $) {
            'use strict';

            var Site = window.Site;
            $(document).ready(function () {
                Site.run();
            });
        })(document, window, jQuery);


        $('img.zoomable').click('click', function () {
  var img = $(this);
  var bigImg = $('<img />').css({
    'max-width': '100%',
    'max-height': '100%',
    'display': 'inline'
  });
  bigImg.attr({
    src: img.attr('src'),
    alt: img.attr('alt'),
    title: img.attr('title')
  });
  var over = $('<div />').text(' ').css({
    'height': '100%',
    'width': '100%',
    'background': 'rgba(0,0,0,.82)',
    'position': 'fixed',
    'top': 0,
    'left': 0,
    'opacity': 0.0,
    'cursor': 'pointer',
    'z-index': 9999,
    'text-align': 'center'
  }).append(bigImg).bind('click', function () {
    $(this).fadeOut(300, function () {
      $(this).remove();
    });
  }).insertAfter(this).animate({
    'opacity': 1
  }, 300);
});
    </script>

</body>

</html>