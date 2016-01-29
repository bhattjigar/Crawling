<?php 
//error_reporting(0);
ini_set('max_execution_time', -1); 
ini_set('memory_limit', '3G'); 
class db
{
  static  $c;
  function __construct($server,$user,$pw,$db)
  {
    
      try
          {
            
            db::$c=new PDO("mysql:host=$server;dbname=$db",$user,$pw);
            db::$c->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "connection is perfect ";
           

          }
          
          catch(PDOException $e)
            {

               echo $e->getMessage();

            }
  }
  public function query($sql)
  {
                echo $sql;
                $q=db::$c->prepare($sql); 
                $q->execute();

  }
  
    public function countrow($s)
    {
      $q=db::$c->prepare($s); 
      $q->execute();

      return $q->rowCount();;

    }
  }

// DB class complete 

 class crawl 
{
    // for get all objects   

    static $obj=array();
    static $domain;
    static $fordomaincount=0;
    static $tabledomain;
    static $table;
    
    public function __construct($url)
    {
      
      // for checking http or https
      if(crawl::$fordomaincount==0)
      { 
        crawl::$fordomaincount=1;
        crawl::$tabledomain=$this->domain($url);
        $this->newtable($this->domain($url));
        array_push(crawl::$obj,$url);
      }
      ob_start();
      echo $url."</br>";
      ob_flush();
      

      $this->urltype=substr($url,0,5);

      if($this->urltype=="https")
      {
        $this->urltype=substr($url,0,6);
      }
      // final domain 

      $this->domain=$this->urltype."//".$this->domain($url);

      crawl::$domain=$this->domain;
      // this is url 

      $this->url=$url;

        if (!function_exists('curl_init'))
        {
              die('Timeswen is Busy....');
        }
          
      $curl = curl_init();

      $header[0] = "Accept: text/xml,application/xml,application/xhtml+xml,";
      $header[0] .= "text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5";
      $header[] = "Cache-Control: max-age=0";
      $header[] = "Connection: keep-alive";
      $header[] = "Keep-Alive: 300";
      $header[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7";
      $header[] = "Accept-Language: en-us,en;q=0.5";
      $header[] = "Pragma: ";

      curl_setopt($curl, CURLOPT_URL, $url);
      //curl_setopt($curl, CURLOPT_REFERER, "www.torrentz.in");
      curl_setopt($curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36");
      curl_setopt($curl, CURLOPT_HTTPHEADER, $header);

      //curl_setopt($curl, CURLOPT_REFERER, "http://www.facebook.com");
      curl_setopt($curl, CURLOPT_ENCODING, "gzip,deflate");
      curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
      curl_setopt($curl, CURLOPT_AUTOREFERER, true);
      curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
      //curl_setopt($curl, CURLOPT_TIMEOUT, 130);
      //curl_setopt($curl,CURLOPT_CAINFO,'mozilla.pem'); /* fixed! */
      curl_setopt($curl, CURLOPT_FOLLOWLOCATION,true);

    $this->getname(curl_exec($curl));

      curl_close($curl);

       
    }
    

    public function getname($html)
    {
      $this->dom=new DOMDocument();
      $this->dom->loadHTML($html);

        foreach($this->dom->getElementsByTagName('*') as $e )
        {

          
          $this->tags[$e->nodeName]='';
          
           

        }

          foreach($this->tags as $tag=>$v)
          {
             $this->nodeinn($tag);
          }


          // for only select keys not values 

        
        $this->makearray($this->a,'a');
        
        //$this->makearray($this->tags,'tags');

    }



    public function nodeinn($tag)
    {

      foreach($this->dom->getElementsByTagName($tag) as $e )
        {

          
          $this->att($e);
          
           

        }
    }


    public function att($node)
    {

      
        //echo  '<h1>'.$node->nodeName.'</h1>';

        
        foreach ($node->attributes as $attrName => $attrNode) 
        {
            
           $tag=$node->nodeName;

          if($tag!="html" && $tag!="style" && $tag!="script" && $tag!="body")
            {
            
                 //$this->all[$node->nodeName][$attrName][$attrNode->nodeValue]=$node->nodeValue;
                 
                  


                    if($attrName=='href'||$attrName=='src')
                    {
                     
                       $this->validateurl($attrNode->nodeValue);

                    }

                    if($attrName=="id"||$attrName=="class")
                    {

                       $this->tag[trim($node->nodeName)][trim($attrName)][trim($attrNode->nodeValue)]="";

                    } 
           }
             




        }// foreach complete 

        

          
          //echo '<p>'.$node->nodeValue.'</p>';


     }

     
     public function startsWith($haystack, $needle) 
     {
        // search backwards starting from haystack length characters from the end
        return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== FALSE;
     }



      public function endsWith($haystack, $needle) 
      {
          // search forward starting from end minus needle length characters
          return $needle === "" || (($temp = strlen($haystack) - strlen($needle)) >= 0 && strpos($haystack, $needle, $temp) !== FALSE);
      }
     
/*

startsWith("", "abcdef") -> false

endsWith("abcdef", "ab") -> false

endsWith("abcdef", "ef") -> true

*/


///     for title and meta tags for keywords 

     public function title($name,$value)
     {
     
             if (strpos($name, 'title') !== false) 
             {
                  
                  $this->title[$value]='';

            }
     

     }

///validating url for [//] [/] [starts with www ] [verified with url http or https:]
     /*
     0.  .
     1. //
     2. /
     2.1  ./    
     3. http:
     4. https:
     5. www

     */
    public function validateurl($url)
    {
                
                $oldurl=$url;

                $url=str_replace("\\","",$url);

                $url=str_replace('"',"",$url);
                //echo $url;
                
        if($this->startsWith($url,"//")==1)
        {
            $url=$this->urltype.$url;
            //echo "</br>//------>".$url."</br>";
        }

        else if($this->startsWith($url,"/")==1)
        {
            
            $url=$this->domain.$url;
            //echo "</br>/------>".$url."</br>";
        }


        else if($this->startsWith($url,"./")==1)
        {
            $url=str_replace("./","",$url);
            $url=$this->domain."/".$url;
            //echo "</br>./------>".$url."</br>";
        }


        else if($this->startsWith($url,".")==1)
        {
             $url=$this->url;
             //echo "</br>...------>".$url."</br>";
        }

        else if($this->startsWith($url,"www")==1)
        {
                 
              $url=$this->urltype."://".$url;
              //echo "</br>www------>".$url."</br>";

        }
        else if($this->startsWith($url,"#")==1)
        {
           $url=$this->url;
        }

 
        else
        {
              
            //$url=$this->url.$url;
        }

              


              if(strpos($url, '.jpg') !== false||strpos($url, '.png') !== false||strpos($url, '.js') !== false||strpos($url, '.css') !== false||strpos($url, 'javascript:void') !== false||strpos($url, '.gif') !== false||strpos($url, '.ico') !== false)
              {
                $this->olda[$oldurl]="";    
              }
              else
              $this->a[$url]="";
    }





  //get main domain name 
    public function domain($url)
    {
        $pieces = parse_url($url);
        $domain = isset($pieces['host']) ? $pieces['host'] : '';
        if (preg_match('/(?P<domain>[a-z0-9][a-z0-9\-]{1,63}\.[a-z\.]{2,6})$/i', $domain, $regs)) {
          return $regs['domain'];
        }
        return false;
    }


//for only fetch associative arrays 

    public function makearray($array,$oarray)
    {
            
            foreach ($array as $key => $value)
             {
                 
                 array_push(crawl::$obj,$key);        

             }
      
      $this->callofperfection(crawl::$fordomaincount);


    }

// for append the array 


    public function callofperfection($pos)
    {

        //print_r(crawl::$obj);
      if($pos>4)
      {
        
        //print_r(crawl::$obj);
        
        exit();
      }
      else
      {
        crawl::$fordomaincount=$pos+1;
        $key=crawl::$obj[$pos+1];
        
        // insert url into bigdata

        //$this->insert($key);

        // make construct of each url 

        $key=new crawl($key);
      }
        
    }

// for specific root url 
      public function newtable($table)
      {

                crawl::$table=new db("localhost","root","","bigdata");
                $newtable=<<<EOSQL
                CREATE TABLE IF NOT EXISTS '$table' (
                  wen_no BIGINT AUTO_INCREMENT ,
                  wen_name text NOT NULL,
                  PRIMARY KEY (wen_no)
                  );

EOSQL;
                crawl::$table->query($newtable);

      }
      public function insert($val)
      {
        $insert=<<<EOSQL
        INSERT INTO crawl::$tabledomain('wen_name') VALUES('$val'); 
EOSQL;
        crawl::$table->query($insert);
      }


}//final class complete 

?>