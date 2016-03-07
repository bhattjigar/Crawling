
<?php
/*header('Content-Type: application/json'); 
libxml_use_internal_errors(TRUE);*/

libxml_use_internal_errors(TRUE);
require('../BOT.php');
/*$site=new bot($u);*/



$tag=array() ;
$o=file_get_contents("php://input");

$r=explode("+^+",$o);
$u=$r[1];
if((isset($r[0])&&trim($r[0])!==""))
{
	$url=$r[0];
}



if(isset($u)&&trim($u)!=="")
{
	$u=(string)trim($u);
	$s=explode(",",$u);
	for($i=0;$i<count($s);$i++)
	{
		/*echo $s[$i];*/
		$tmp=explode("-->",$s[$i]);
		$tag[$tmp[0]][$tmp[1]][$tmp[2]]="";
		

	}
	$site=new bot($url);

	foreach ($tag as $key => $value) 
	{
	    /*echo "Key: $key; \n";*/
	    foreach ($value as $k => $v) 
	    {
	    	/*echo "attribute: $k; \n";*/
	    	foreach ($v as $n => $op) 
		    {
		    	/*echo "name $n;\n";*/
		    	echo "\nis avail:: ".$site->node[$key][$k][$n];
		    	/*echo count($site->node[$key][$k][$n])."\n";*/
		    	print_r($site->ADV($key,$k,$n));
		    }
		    	
	    }

	}
	
}

?>

