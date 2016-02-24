 <?php 

 require("TIMESWEN.php");

 function BOT($url)
  {
    try
    {
      
      
      // if (!function_exists('curl_init'))
      //     {
      //             die('Timeswen is Busy....');
      //     }
      //     else
      //     {
      //       $ch = curl_init();

      //             $header[0] = "Accept: text/xml,application/xml,application/xhtml+xml,";
      //             $header[0] .= "text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5";
      //             $header[] = "Cache-Control: max-age=0";
      //             $header[] = "Connection: keep-alive";
      //             $header[] = "Keep-Alive: 300";
      //             $header[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7";
      //             $header[] = "Accept-Language: en-us,en;q=0.5";
      //             $header[] = "Pragma: ";

      //             curl_setopt($ch, CURLOPT_URL, $url);
      //             curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36");
      //             //curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (compatible; Wenbot/1.0; +http://www.Timeswen.com/wenbot");
      //             curl_setopt($ch, CURLOPT_HTTPHEADER, $header);

                    
      //               curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36");
      //               //curl_setopt($ch, CURLOPT_POST, TRUE);
      //               curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
      //               curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
      //               curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
      //               $html=curl_exec($ch);

      //               $report=curl_getinfo($ch);

      //               curl_close($ch);
      //                 /*echo $url."</br>".$report['http_code']."</br>";*/
                      
      //               if($report['http_code']==404 || strpos($report['content_type'], 'text') === FALSE)
      //               {
      //                 die("not found");
      //               }
                     
      //            return $html;
      //     }
    }
    catch(Exception $e)
    {
      echo $e->getMesage();
    }
          
      
  }



  // $url="http://stackoverflow.com/questions/129898/javascript-and-session-variables/24508546";
  $url="http://sonanamould.in/" ;
  $why=file_get_html($url);

    // $why= str_get_html($html);

   

    
    
    foreach ($why->find("div[class=left-container]") as $t) 
    {
   			foreach ($t->find("div[class=div-fixed]") as $ans ){
          $op = preg_replace('/(<[^>]+) style=".*?"/i', '$1', $ans);
   				echo $op;

   			}
    }

 



?>



