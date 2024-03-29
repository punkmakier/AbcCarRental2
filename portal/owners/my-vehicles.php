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


if(isset($_GET['logout']) == 'true') {
    unset($_SESSION['owners_id']);
    header('location:index.php');
}

if(isset($_POST['btnCreate']) ){
    

    $location       = $_POST['location'];
    $manufacturer       = $_POST['manufacturer'];
    $no_of_doors        = $_POST['no_of_doors'];
    $fuel_tank_capacity = $_POST['fuel_tank_capacity'];
    $seating_capacity   = $_POST['seating_capacity'];
    $transmission_type  = $_POST['transmission_type'];
    $gear_box           = $_POST['gear_box'];
    $model              = $_POST['model'];
    $color              = $_POST['color'];
    $year               = $_POST['year'];
    $rate               = $_POST['rate'];
    $rulesandregulations= $_POST['rulesandregulations'];
    $fuel_type          = $_POST['fuel_type'];

    if(save_cars($location,$manufacturer,$no_of_doors,$fuel_tank_capacity,$seating_capacity,$transmission_type,$gear_box,$model,$color,$year,$rate,$fuel_type,$rulesandregulations)){
        header("Location: my-vehicles.php?action=add&status=success");
    }else{
        header("Location: my-vehicles.php?action=add&status=error");
    }
    
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

    <title>Portal - Owner</title>

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


   
   <!-- <script>
       function submitForm(form){
          swal({
              title: "Success",
              text:  "Vehicle Added",
              icon: "success",
              
          })
          .then((isOkay) => {
              if (isOkay){
             window.location = "my-vehicles.php";
            }
          });
          return false;
       }
   </script> -->

    <!-- Fonts -->
    <link rel="stylesheet" href="../assets/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="../assets/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
    <script src="../assets/vendor/breakpoints/breakpoints.js"></script>

    <script src="../../ckeditor/ckeditor.js"></script>
    <script src="../../ckeditor/samples/js/sample.js"></script>
    <link rel="stylesheet" href="../../ckeditor/samples/css/samples.css">
    <link rel="stylesheet" href="../../ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">
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

                        <li class="dropdown site-menu-item ">
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

            <?php if(isset($_GET['action']) == 'add') { ?>
            <form enctype="multipart/form-data" method="POST" id="carRegister">
                <div class="panel">
                    <header class="panel-heading">
                        <div class="panel-actions"></div>
                        <h3 class="panel-title">Vehicle Details</h3>
                    </header>
                    <div class="panel-body">
                        <div class="row">

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Image</label>
                                    <input type="file" class="form-control" name="images[]" multiple required>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Location</label>
                                    <select name="location" class="form-control" id="">
                                        <option value="Bacoor">Bacoor</option>
                                        <option value="Cavite City">Cavite City</option>
                                        <option value="Dasmariñas">Dasmariñas</option>
                                        <option value="General Trias">General Trias</option>
                                        <option value="Imus">Imus</option>
                                        <option value="Tagaytay">Tagaytay</option>
                                        <option value="Trece Martires">Trece Martires</option>
                                        <option value="Alfonso">Alfonso</option>
                                        <option value="Amadeo">Amadeo</option>
                                        <option value="Carmona">Carmona</option>
                                        <option value="General Emilio Aguinaldo">General Emilio Aguinaldo</option>
                                        <option value="General Mariano Alvarez">General Mariano Alvarez</option>
                                        <option value="Indang">Indang</option>
                                        <option value="Kawit">Kawit</option>
                                        <option value="Magallanes">Magallanes</option>
                                        <option value="Maragondon">Maragondon</option>
                                        <option value="Mendez">Mendez</option>
                                        <option value=""></option>
                                        <option value="Naic">Naic</option>
                                        <option value="Noveleta">Noveleta</option>
                                        <option value="Rosario">Rosario</option>
                                        <option value="Silang">Silang</option>
                                        <option value="Tanza">Tanza</option>
                                        <option value="Ternate">Ternate</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Manufacturer</label>
                                    <select name="manufacturer" class="form-control" id="">
                                        <?php foreach(all_manufacturers() as $m) { ?>
                                        <option value="<?=$m['manufacturer']?>"><?=$m['manufacturer']?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Model</label>
                                    <input type="text" class="form-control" name="model" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Color</label>
                                    <input type="text" class="form-control" name="color" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Year</label>
                                    <input type="text" class="form-control" name="year" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Fuel Type</label>
                                    <select name="fuel_type" class="form-control" id="" required>
                                        <option value="Gas">Gas</option>
                                        <option value="Diesel">Diesel</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Transmission Type</label>
                                    <select name="transmission_type" class="form-control" id="" required>
                                        <option value="Manual">Manual</option>
                                        <option value="Automatic">Automatic</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Gear Box</label>
                                    <input type="text" class="form-control" name="gear_box" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Seating Capacity</label>
                                    <input type="text" class="form-control" name="seating_capacity" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Fuel Tank Capacity</label>
                                    <input type="text" class="form-control" name="fuel_tank_capacity" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Number of Doors</label>
                                    <input type="text" class="form-control" name="no_of_doors" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Rate per Day</label>
                                    <input type="number" class="form-control" name="rate" required>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="">Description/Rules & Regulations</label>
                                    <textarea id="editor" name="rulesandregulations" required></textarea>
                                </div>
                            </div>

                            <div class="col-12 text-right">
                                <button class="btn btn-primary btn-sm text-white" name="btnCreate" type="submit">Create</button>
                            </div>

                        </div>
                    </div>
                </div>
            </form>
            <?php } else { ?>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <a href="my-vehicles.php?action=add" class="btn btn-primary btn-sm" id="addVehicles">Add Vehicle</a>
                        <small id="vehicleText" class="d-none" ><i></i></small>
                    </div>
                </div>
            </div>
            
            <div class="panel">

                <header class="panel-heading">
                    <div class="panel-actions"></div>
                    <h3 class="panel-title">My Vehicles</h3>
                </header>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-hover dataTable table-striped w-full" data-plugin="dataTable">
                            <thead>
                                <tr>
                                    <td style="width:1px"></td>
                                    <th>Manufacturer</th>
                                    <th>Model</th>
                                    <th>Year</th>
                                    <th>Fuel Type</th>
                                    <th>Rate Per Day</th>
                                    <th style="width:1%"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1; foreach(get_my_cars($_SESSION['owners_id']) as $data) { ?>
                                <tr>
                                    <td style="width:1px"><?=$i++?></td>
                                    <td><?=$data['manufacturer']?></td>
                                    <td><?=$data['model']?></td>
                                    <td><?=$data['year']?></td>
                                    <td><?=$data['fuel_type']?></td>
                                    <td>₱<?=number_format($data['rate'],2)?></td>
                                    <td><a href="vehicle-details.php?id=<?=($data['id'])?>"><i
                                                class="icon wb-pencil"></i></a></td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <?php } ?>

        </div>
    </div>
    <!-- End Page -->


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
        $(document).ready(function(){

            <?php 
                if(isset($_GET['status']) == "success"){
                    echo 'swal({
                        title: "Success",
                        text:  "New car has been added",
                        icon: "success",
                        button: true,
                        })
                        .then((isOkay) => {
                            if (isOkay){
                            window.location.href="my-vehicles.php?action=add";
                        }
                    });';
                   
                }
                else if(isset($_GET['status']) == "error"){
                    echo 'swal({
                        title: "Failed",
                        text:  "Something went wrong...",
                        icon: "error",
                        button: true,
                        })
                        .then((isOkay) => {
                            if (isOkay){
                            window.location.href="my-vehicles.php?action=add";
                        }
                    });';
                }
            ?>
            
        })
    </script>

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
    initSample();
</script>
    <script>
        
        <?php 
        
        if(get_my_C_StatusCredits($_SESSION['owners_id']) == "" || get_my_C_StatusCredits($_SESSION['owners_id']) == "None" || get_my_C_StatusCredits($_SESSION['owners_id']) == "Pending"){

                ?>
            
            $("#vehicleText").removeClass("d-none");
            $("#addVehicles").addClass('disabled');
            $("#vehicleText").text("Buy Credits to Add Vehicles");
        <?php }
        else if(get_my_accountType($_SESSION['owners_id']) == "Micro"){


            if(get_my_accountCreditsExpiration($_SESSION['owners_id']) == "expired"){
                ?>
                 $("#vehicleText").removeClass("d-none");
                $("#addVehicles").addClass('disabled');
                $("#vehicleText").text("Your account has been expired. Buy another credits");

            <?php }

            
            else if(get_my_cars_count($_SESSION['owners_id']) >= 3){
               ?>
               $("#vehicleText").removeClass("d-none");
                $("#addVehicles").addClass('disabled');
                $("#vehicleText").text("Micro account can not upload more than 3 cars");
            <?php }
            else{
                ?>
          

    <?php }}
    
    else if(get_my_accountType($_SESSION['owners_id']) == "Macro"){
        if(get_my_accountCreditsExpiration($_SESSION['owners_id']) == "expired"){
    ?>
             $("#vehicleText").removeClass("d-none");
            $("#addVehicles").addClass('disabled');
                $("#vehicleText").text("Your account has been expired. Buy another credits");
        <?php }}
        ?>
 
    </script>
</body>

</html>