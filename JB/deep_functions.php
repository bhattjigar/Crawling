<?php // only dept 1 
$GLOBALS['deep'] = array(

1 => function ($args)
{
 $html=$GLOBALS['html'];
  $arg1 = $args[0];

  //div[class=left-container]
  foreach ($html->find($arg1) as $child) 
    {
          return removeclassidstyle($child);
    }

},

// dept2 for 2 tags
2 => function ($args)
{
 $html=$GLOBALS['html'];
  $arg1 = $args[0];
  $arg2 = $args[1];

  // die("Second called");
  foreach ($html->find($arg1) as $child) 
    {
      foreach ($child->find($arg2) as $child2 )
      {
          return removeclassidstyle($child2);
      }

    }

},

// dept3 for 3 tags
3 => function ($args)
{
$html=$GLOBALS['html'];

  $arg1 = $args[0];
  $arg2 = $args[1];
  $arg3 = $args[2];

  foreach ($html->find($arg1) as $child) 
    {
      foreach ($child->find($arg2) as $child2 )
      {
            foreach ($child2->find($arg3) as $child3 )
          {
              return removeclassidstyle($child3);
          }
       
      }

    }

},

// dept4 for 4 tags
4 => function ($args)
{
$html=$GLOBALS['html'];

  $arg1 = $args[0];
  $arg2 = $args[1];
  $arg3 = $args[2];
  $arg4 = $args[3];


  foreach ($html->find($arg1) as $child) 
    {
      foreach ($child->find($arg2) as $child2 )
      {
            foreach ($child2->find($arg3) as $child3 )
          {
                foreach ($child3->find($arg4) as $child4 )
              {
                  return removeclassidstyle($child4);
              }
              
          }
      }
    }
},

// dept5 for 5 tags
5 => function ($args)
{
$html=$GLOBALS['html'];

  $arg1 = $args[0];
  $arg2 = $args[1];
  $arg3 = $args[2];
  $arg4 = $args[3];
  $arg5 = $args[4];

  foreach ($html->find($arg1) as $child) 
    {
      foreach ($child->find($arg2) as $child2 )
      {
            foreach ($child2->find($arg3) as $child3 )
          {
                foreach ($child3->find($arg4) as $child4 )
              {
                  foreach ($child4->find($arg5) as $child5)
              {
                  return removeclassidstyle($child5);
              }
              }
              
          }
      }
    }

}
);
?>