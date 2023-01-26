<?php
    include '../../config/functions.php';

    $usertype = "";
    if(isset($_POST['customerIdinput'])){
        $dateToday = date("l");
        $cID = $_POST['customerIdinput'];
        $fname = $_POST['cfname'];
        $cnum = $_POST['cnumber'];
        $amountCred = $_POST['amountCredits'];
        $userType = $_POST['userType'];
        $ref1	  = rand(100,999);
        $ref2	  = rand(100,999);
        $ref3	  = rand(100000,999999);
        $referenceNumber = $ref1." ".$ref2." ".$ref3;
        $filename = $_FILES['uploadReceipt']['name'];
        $imageTmpName = $_FILES['uploadReceipt']['tmp_name'];

        if(showExistingCreditsAccount($cID) == 1){
            updateTheCustomerIDCredits($cID);
            if(buy_credits($referenceNumber,$cID,$fname,$cnum, $amountCred,$userType,$dateToday,$filename)){
                move_uploaded_file($imageTmpName,'../../images/creditsproof/'.$filename);
                echo "Success";
            }
        }else{
            if(buy_credits($referenceNumber,$cID,$fname,$cnum, $amountCred,$userType,$dateToday,$filename)){
                move_uploaded_file($imageTmpName,'../../images/creditsproof/'.$filename);
                echo "Success";
            }
        }

        
    }

    else if(isset($_POST['checkUtype'])){
        $data = getUserTypeByID($_POST['checkUtype']);
        echo $data;
    }

?>