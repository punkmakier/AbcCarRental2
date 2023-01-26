<?php

require_once __DIR__ . '../../vendors/autoload.php';

$mpdf = new \Mpdf\Mpdf([
    'mode' => 'utf-8',
    'format' => 'A4-P',
    'orientation' => 'P'
]);




// $mpdf->WriteHTML($a);
$a = file_get_contents("http://localhost/abcrentalcars/portal/totalProfitsPdf.php");
$mpdf->WriteHTML($a);
$mpdf->Output();



?>
