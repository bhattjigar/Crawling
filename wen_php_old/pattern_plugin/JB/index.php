
<?php
header('Content-Type: application/json'); 
libxml_use_internal_errors(TRUE);
require('alldata.php');
$u=file_get_contents("php://input");
if(isset($u)&&trim($u)!=="")
{
	$u=trim($u);
$site=new bot($u);
//error_reporting(0);
echo json_encode($site->node);	
}

?>

