<?php 

include '../../config/functions.php';


$referenceNumber = "";

if(isset($_POST['generateRefChat'])){
    $getChat = get_chat_reference($_SESSION['owners_id']);
    if($getChat == ""){
        $reference	  = 'ABC'.rand(111111,999999);
        create_chat_to_admin($reference,$_SESSION['owners_id']);
        $referenceNumber = $reference;
    }else{
       $referenceNumber = $getChat;
    }
    
   
    header("Location: chat-admin.php?reference=".$referenceNumber."&id=".$_SESSION['owners_id']);
}










?>
