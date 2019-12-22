<?php 
include_once('config.php');

if(isset($_REQUEST['delId']) and $_REQUEST['delId']!="" and $_REQUEST['delType'] =="arotdar"){
	$db->delete('arot_info',array('id'=>$_REQUEST['delId']));
	header('location: arot.php?msg=rds');
	exit;
}

if(isset($_REQUEST['delId']) and $_REQUEST['delId']!="" and $_REQUEST['delType'] == 'lc'){
	$db->delete('lc_info',array('id'=>$_REQUEST['delId']));
	header('location: lc.php?msg=rds');
	exit;
}

if(isset($_REQUEST['delId']) and $_REQUEST['delId']!="" and $_REQUEST['delType'] == 'truck'){
	$db->delete('users',array('id'=>$_REQUEST['delId']));
	header('location: browse-users.php?msg=rds');
	exit;
}

?>