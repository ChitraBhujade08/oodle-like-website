<?php
$query_string="product_id=1&cat_id=3&subcat_id=2";
$str="product_detail.php";
echo $encoded_string=base64_encode($query_string);
echo nl2br("\n");
echo $decoded_string=base64_decode($encoded_string);   
/// explode  -> convert string to array
$res = explode("&",$decoded_string);
echo "<pre>";
print_r($res);
echo "</pre>";


?>