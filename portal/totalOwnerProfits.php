<?php

require_once __DIR__ . '../../vendors/autoload.php';
require_once '../config/functions.php';


$mpdf = new \Mpdf\Mpdf([
    'mode' => 'utf-8',
    'format' => 'A4-P',
    'orientation' => 'P'
]);
$date = date('d/m/Y');
         
$sql = mysqli_query($db, "SELECT t.destination,t.from, t.to,t.rate_per_day,t.days_rented,t.total,t.reference ,c.manufacturer,c.model, CONCAT(a.firstname,' ',a.middlename,' ',a.surname) AS CompleteName FROM transactions as t INNER JOIN accounts as a ON a.id = t.owners_id INNER JOIN cars as c ON c.id = t.cars_id WHERE t.owners_id = ". $_GET['ownerId']." AND t.status = 'Paid'");

$sql2 = mysqli_query($db, "SELECT SUM(total) as TotalProfit FROM transactions WHERE owners_id = ". $_GET['ownerId']." AND status='Paid'");
$totalProfit = mysqli_fetch_assoc($sql2);

$fname = mysqli_fetch_assoc($sql);

$completeName = $fname['CompleteName'];

$total = "₱ ". number_format($totalProfit['TotalProfit'],2);

$html = "";

$html .= "
    
<table  align='center'>
<tr>
    <td width='380px'><img src='logo.png' alt='' style='width: 200px;'><br><br>
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

<table width='600' align='center'>
<tr>
    <td width='200px'>
        <b>Owner</b><br><br>
        $completeName
    </td>
    <td width='50px'>
    
    <b>Date</b> 
        <br><br>
        $date
    </td>
    <td align='right'>
         <u><b>SALES AMOUNT:</b> <span style='color: green;'>$total</span> </u>
    </td>
</tr>
</table>

<br><br>
    <table border='1' align='center' width='650'>
            <tr>
                <td style='width:150px;'>Vehicle</td>
                <td>Destination</td>
                <td>From</td>
                <td>To</td>
                <td>Rate Per Day</td>
                <td>Days</td>
                <td>Total</td>
                <td>Reference</td>
            </tr>

        <tbody>";
            
        while($stmt = mysqli_fetch_assoc($sql)){
            $html .= "<tr>
            <td style='text-align:center'>$stmt[manufacturer] $stmt[model]</td>
            <td style='text-align:center'>$stmt[destination]</td>
            <td style='text-align:center'>$stmt[from]</td>
            <td style='text-align:center'>$stmt[to]</td>
            <td style='text-align:center'>$stmt[rate_per_day]</td>
            <td style='text-align:center'>$stmt[days_rented]</td>
            <td style='text-align:center'>$stmt[total]</td>
            <td style='text-align:center'>$stmt[reference]</td>
        </tr>";
        } 

        $html .= "
        </tbody>
    </table>
    

";




// $mpdf->WriteHTML($html);
// $a = file_get_contents("http://localhost/abcrentalcars/portal/totalOwnerProfitsPdf.php");
$mpdf->WriteHTML($html);
$mpdf->Output();



?>
