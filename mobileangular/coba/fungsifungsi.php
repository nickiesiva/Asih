<?php
include('konek.php');

function q($sql){
	global $link;
	$a=mysqli_query($link,$sql);
	while($r=mysqli_fetch_assoc($a)){
		$z[]=$r;
	}
	return $z;
}

function getListBuilding(){
	$z=q("select * from list_building order by nama");
	return json_encode($z);
}

function getNewOrder(){
	$inv=q("select *,i.id as inv_id from invoice i join list_building l on i.pembeli_id=l.id where i.tgl_transfer='0000-00-00' order by i.tgl_beli");
	foreach ($inv as $key => $value) {
		$inv_id_arr[]=$value['inv_id'];
		$inv_by_id[$value['inv_id']]=$value;
	}
	$items=q("select * from invoice_items i join products p on i.product_id=p.id where invoice_id in (".implode(",",$inv_id_arr).")");
	foreach ($items as $key => $value) {
		$items_arr[$value['invoice_id']][$key]=$value;
	}
	foreach ($inv_by_id as $id => $v) {
		$inv_by_id[$id]['items']=$items_arr[$id];
	}
	//echo "<pre>".print_r($inv_by_id,1)."</pre>";
	return json_encode($inv_by_id);
}

function parsing_url(){
	$uri_arr=explode("?",$_SERVER['REQUEST_URI']);
	if (!empty($uri_arr[1])) {
		$url=$uri_arr[1];
		$url_arr=explode("&",$url);
		if (count($url_arr)>1) {
			foreach ($url_arr as $key => $value) {
				if ($key==0) {
					continue;
				}
				$val[]=explode("=",$value)[1];
			}
			$url_string=implode(",",$val);
			return $url_string;
		}else{
			return '';
		}
	}else{
		return '';
	}
}
?>