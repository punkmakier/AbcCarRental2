<?php
    include '../../config/functions.php';

    $usertype = "";
    if(isset($_POST['upgradeThisAccount'])){
        if($_POST['upgradeThisAccount'] == 2){
            admin_update_to_macro($_POST['userIDAccount'], $_POST['upgradeThisAccount'], "Macro");
        }else{
            admin_update_to_macro($_POST['userIDAccount'], $_POST['upgradeThisAccount'], "Micro");
        }
    }

    else if(isset($_POST['subscriptionValue'])){

        if(buy_credits_update($_POST['userIDAccount'], $_POST['subscriptionValue'], date("l"))){
            echo "Success";
        }
    }

?>