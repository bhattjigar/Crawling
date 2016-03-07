<?php
class bot
{
  static $count=0;
  static $table;
  
  static $maindomain;

  function __construct($url)
  {
    try
    {
      $this->url=$url;
      
      if (!function_exists('curl_init'))
          {
                  die('Timeswen is Busy....');
          }
          else
          {
            $ch = curl_init();

                  $header[0] = "Accept: text/xml,application/xml,application/xhtml+xml,";
                  $header[0] .= "text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5";
                  $header[] = "Cache-Control: max-age=0";
                  $header[] = "Connection: keep-alive";
                  $header[] = "Keep-Alive: 300";
                  $header[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7";
                  $header[] = "Accept-Language: en-us,en;q=0.5";
                  $header[] = "Pragma: ";

                  curl_setopt($ch, CURLOPT_URL, $url);
                  curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36");
                  //curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (compatible; Wenbot/1.0; +http://www.Timeswen.com/wenbot");
                  curl_setopt($ch, CURLOPT_HTTPHEADER, $header);

                    
                    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36");
                    //curl_setopt($ch, CURLOPT_POST, TRUE);
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
                    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
                    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
                    $this->html=curl_exec($ch);

                    $report=curl_getinfo($ch);

                    curl_close($ch);
                      /*echo $url."</br>".$report['http_code']."</br>";*/
                      
                    if($report['http_code']==404 || strpos($report['content_type'], 'text') === FALSE)
                    {
                      die("not found");
                    }
                      $this->DOMAIN($url);
                      $this->GETNAME($this->html);
                 
          }
    }
    catch(Exception $e)
    {
      echo $e->getMesage();
    }
          
      
  }
  public function DESTROY($r)
  {
    unset($r);
  }


  public function GETNAME($html)
  {
    try
    {
        $this->dom=new DOMDocument();
          $this->dom->loadHTML($html);

          foreach($this->dom->getElementsByTagName('*') as $e )
              {
                $this->tags[$e->nodeName]='';
              }
              $this->HTML($this->MAKEARRAY($this->tags));
    }
      catch(Exception $e)
      {
        echo $e->getMesage();
      }     

  }

  public function MAKEARRAY($array)
    {
      try
      {
        $tmp=array();
            foreach ($array as $key => $value)
              {
                 
                 array_push($tmp,$key);        

              }
      
          return $tmp;
      }
        catch(Exception $e)
        {
          echo $e->getMesage();
        }   


    }
    public function DOMAIN($url)
    {
      try
      {
        

        $this->urltype=substr($url,0,5);

          if($this->urltype=="https")
            {
              $this->urltype=substr($url,0,6);
            }
          $pieces = parse_url($url);
          $domain = isset($pieces['host']) ? $pieces['host'] : '';
          if (preg_match('/(?P<domain>[a-z0-9][a-z0-9\-]{1,63}\.[a-z\.]{2,6})$/i', $domain, $regs))
             {
              $this->finalurl=$this->urltype."//".$regs['domain'];
                $this->domain=$regs['domain'];
             }
          return false;
      }
      catch(Exception $e)
      {
        echo $e->getMesage();
      }
      
      
    }

    public function HTML($tmp)
    {
      try
      {
        if(bot::$count==0)
          { 
            bot::$count=1;
            bot::$table=str_replace(".","_",$this->domain);
            bot::$maindomain=$this->domain;
            
          }

        foreach ($tmp as $tag) 
        {

          foreach($this->dom->getElementsByTagName($tag) as $node )
            {
              foreach ($node->attributes as $attrName => $attrNode)
               {
                if(isset($this->node[trim($node->nodeName)][trim($attrName)][trim($attrNode->nodeValue)]))
                {

                }
                else
                {
                  $this->node[trim($node->nodeName)][trim($attrName)][trim($attrNode->nodeValue)]=$node->nodeValue;  
                }
                
                if($attrName=='href'||$attrName=='src')
                      {
                        /*$this->VERIFYURL($attrNode->nodeValue);*/

                      }

               }
              
            } 
        }

        
        
      }
      catch(Exception $e)
      {
        echo $e->getMesage();
      }
     
    }
// THIS IS ADVANCED FUNCTION DIFFERENT TIME : 22:14 DATE: 21-02-2016
    //FOR TIMESWEN.COM
  public function ADV($tag,$attribute,$attributeName)
  {
    try
    {
        $this->adv=new DOMDocument();
          $this->adv->loadHTML($this->html);

          foreach($this->adv->getElementsByTagName($tag) as $node )
              { 

                    $tmp=array();

                      foreach($this->dom->getElementsByTagName($tag) as $node )
                        {
                          foreach ($node->attributes as $attrName => $attrNode)
                           {
                              
                              if($attrName==$attribute && $attrNode->nodeValue==$attributeName)
                              {
                                array_push($tmp,$node->nodeValue);
                              }
                                
                            

                           }
                          
                        } 
        

                
              }
              return $tmp;
              
    }
      catch(Exception $e)
      {
        echo $e->getMesage();
      }     

  }






  }




    ?>