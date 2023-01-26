<?php
    require_once '../config/functions.php';

   
?>

<style>
    *{
        font-family: 'sans-serif';
        text-align: center;
    }

</style>



<table  align='center' style="border: none;">
    <tr>
        <td width='380px'><img src="logo.png" alt="" style="width: 200px;"><br><br>
        ABC RENTAL CARS INC SALES REPORT
    </td>
        <td >
        Address: Sampaloc V, Bucal, <br>
        Dasmarinas City, Cavite <br>
        Phone: 09675712345 <br>
        Email: contact@abcrentalcars.online
    </td>
    </tr>
</table>
<br>
<hr>

<table width="450" align='center'>
    <tr>
        <td width='150px'><b>Date</b> 
            <br><br>
           <?= date("d/m/Y") ?>
        </td>
        <td align='right'>
             <u><b>SALES AMOUNT:</b> <span style="color: green;"><?= PDF_Admin_totalProfitData() ?></span> </u>
        </td>
    </tr>
</table>

<br><br>
        <table border="1" align='center' width="650">
                <tr>
                    <td style="width: 200px;">Reference Number</td>
                    <td>Credits</td>
                    <td>Amount</td>
                    <td>Date</td>
                    <td>ID No.</td>
                    <td>Type</td>
                </tr>

            <tbody>
                <?= PDF_Admin_totalProfit(); ?>
            </tbody>
        </table>
        
