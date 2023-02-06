<?php
require ('../../../wp-load.php');
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
set_time_limit(600);
error_reporting(-1);
/* $name = data($_POST['name']);
$sdt = data($_POST['sdt']);
$qty = data($_POST['qty']);
$email = data($_POST['email']);
$address = data($_POST['address']);
$total = data($_POST['total']);
$from = data($_POST['from']);
$product = data($_POST['product']);
*/
extract( $_POST);
$total2 = number_format($total);
$res = "";
$addtion = "{";
foreach( $_POST as $key => $value ) {
     if( ($key != "name") && ($key != "sdt") && ($key != "email") && ($key != "address") && ($key != "product") && ($key != "qty") && ($key != "total") && ($key != "from") && ($key != "to") ){
     	if($addtion != "{") {
     		$addtion .= ",\"". $key . "\"" . ":\"" . $value . "\"";
     	}
     	else { $addtion .= "\"". $key . "\"" . ":\"" . $value . "\""; }
     }
}
$addtion .= "}";
$value = json_decode($addtion);
$string ="";
foreach ($value as $key2 => $value2) {
   $string .= "$key2 : $value2 <br>";
}
$time = date("ymdHi");
$data = (array)get_option('muahangnhanh_options');
$mess = "<table style='border-collapse: collapse; text-align: left; width: 100%; padding: 10px'>
		<tr style='background-color: #b7109b'>
			<th colspan='2' style='color: white; padding: 10px;'>
				<h1>$from</h1>
				<p>Đơn đặt hàng số: $time </p>
			</th>
		</tr>
		<tr>
			<th style='padding: 10px; width: 30%'>Họ tên</th>
			<td style='padding: 10px; width: 70%'>$name</td>
		</tr>
		<tr>
			<th style='padding: 10px; width: 30%'>Số điện thoại</th>
			<td style='padding: 10px; width: 70%'>$sdt</td>
		</tr>
		<tr>
			<th style='padding: 10px; width: 30%'>Địa chỉ nhận hàng</th>
			<td style='padding: 10px; width: 70%'>$address</td>
		</tr>
		<tr>
			<th style='padding: 10px; width: 30%'>Hàng hóa cần đặt</th>
			<td style='padding: 10px; width: 70%'>$product</td>
		</tr>
		<tr>
			<th style='padding: 10px; width: 30%'>Số lượng</th>
			<td style='padding: 10px; width: 70%'>$qty</td>
		</tr>
		<tr>
			<th style='padding: 10px; width: 30%'>Thông tin thêm</th>
			<td style='padding: 10px; width: 70%'>$string</td> 
		</tr>
		<tr>
			<th style='padding: 10px; width: 30%'>Tổng tiền</th>
			<td style='padding: 10px; width: 70%'>$total2</td>
		</tr>
		<tr>
			<td colspan='2' style='padding: 10px;'>Thông tin được gởi từ: $from</td>		
		</tr>
	</table>";


$headers = array('Content-Type: text/html; charset=UTF-8');
$subject = "Đơn đặt hàng mới từ ".data($_POST['from']);
global $wpdb;
$table_name = $wpdb->prefix.'muahangnhanh';
date_default_timezone_set("Asia/Ho_Chi_Minh");
$res .= $wpdb->insert($table_name, array(
	'madonhang' => $time,
    'ten' => $name,
    'sdt' => $sdt,
    'email' => $email,
    'sanpham' => $product,
    'soluong' => $qty,
    'diachi' => $address,
    'thanhtien' => $total,
    'addtion' => $string,
    ),
    array(
	   '%s',
       '%s',
       '%s',
       '%s',
       '%s',
       '%s',
       '%s',
       '%s',
       '%s',
    ));
$res .= wp_mail($data['noticemail'],$subject,$mess, $headers);
$res .= wp_mail($email,$subject,$mess,$headers);
if(isset($res)){echo $res;}
function data($req){
   
    if(isset($req)){
        return $req;
    }
}
?>