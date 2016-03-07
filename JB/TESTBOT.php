<?php 

require("TIMESWEN.php");
require("./deep_functions.php");


function GetPayloadTOArray(){


  $tmp= file_get_contents("php://input");
  $tmp =  ( explode('","', substr( $tmp, 2, strlen($tmp)-4 ) ) );

  if( empty($tmp) ){
    return null;
  }
  return  array_filter($tmp);
}

function patternCallback( $fn, $data){


    foreach ($data as $i => $pattern)
     {
        $way=explode("~>",$pattern);
            //print_r($way);
            $fn($i,$pattern,$way);
     }
}

function initiateDeep($way)
{

  $size=count($way);
  
  echo $GLOBALS['deep'][$size]($way);
}



 

function getchildnodes($child)
{
  
  dump_html_tree($child);
    /*foreach ($child[0]->children() as $t) 
      {
        echo "->".$t->tag."\n";
        getchildnodes($t);
      }*/
}

function removeclassidstyle($html)
{
  $tmp=preg_replace('/(<[^>]+) style=".*?"/i', '$1', $html);
  $tmp=preg_replace('/(<[^>]+) class=".*?"/i', '$1', $tmp);
  return preg_replace('/(<[^>]+) id=".*?"/i', '$1', $tmp);

}


  // $url="http://stackoverflow.com/questions/129898/javascript-and-session-variables/24508546";
  // $url="http://www.indiatimes.com/news/india/india-will-be-one-of-the-worst-hit-countries-by-climate-change-claims-oxford-university-study-251566.html" ;
  // $url = "http://www.indiatimes.com/news/india/rs-6-300-cr-in-debt-vijay-mallya-now-claims-banks-are-victimising-him-251623.html";
$url = "http://www.scoopwhoop.com/15-Epic-BehindTheScenes-Shots-Of-Hollywood-Heroes-Villains-Chilling-Together/";
  $GLOBALS['html'] =file_get_html($url);
    // $why= str_get_html($html);

$patternlist =array_unique( GetPayloadTOArray() );

// print_r($patternlist);
// die();



patternCallback(
  function( $patternIndex, $patternString, $patternArray){
    
    initiateDeep( $patternArray );

  }
,$patternlist );
   
 /*  $totaltags=$html->find("html");

   echo deep2($html,'div[id=newsFeedArticles]','h1');
   echo deep1($html,'div[class=big-image]');
   echo deep1($html,'div[class=news-right]');

*/

/*echo count($count)."\n";
echo count($count[0]->children());*/

    /*foreach ($html->find("a") as $a)
    {
       echo $a->href."\n";
    }*/
    
    //echo count($totaltags[0]->children());

    /*foreach ($totaltags[0]->children() as $tag) 
    {
      echo $tag->tag."\n";
      getchildnodes($tag);
    }*/
    
 /*   foreach ($why->find("div[class=left-container]") as $t) 
    {
   			foreach ($t->find("div[class=div-fixed]") as $ans ){
          $op = preg_replace('/(<[^>]+) style=".*?"/i', '$1', $ans);
   				echo $op;

   			}
    }
*/
 



?>