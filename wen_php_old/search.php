<!DOCTYPE html>
<html>
<body>

<h2>Request Time</h2>

</br>
<input type='text' id='s' onkeyup='search();'/>

<p id="demo"></p>


<script>

function search() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      console.log(xhttp.responseText);
    }
  }
  var s=document.getElementById('s').value;
  xhttp.open("GET", "./?q="+s, true);
  xhttp.send();
}
</script>

</body>
</html>
