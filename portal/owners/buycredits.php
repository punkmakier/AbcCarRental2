<?php
    include '../../config/functions.php';

    $usertype = "";
    if(isset($_POST['customerIdinput'])){
        $dateToday = date("l");
        $cID = $_POST['customerIdinput'];
        $fname = $_POST['cfname'];
        $cnum = $_POST['cnumber'];
        $amountCred = $_POST['amountCredits'];
        
        $filename = $_FILES['uploadReceipt']['name'];
        $imageTmpName = $_FILES['uploadReceipt']['tmp_name'];


        if(buy_credits($cID,$fname,$cnum, $amountCred,$dateToday,$filename)){
            move_uploaded_file($imageTmpName,'../../images/creditsproof/'.$filename);
            echo "Success";
        }
    }

?>