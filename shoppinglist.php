<!-- 

Copyright (C) 2012  Jeremy Morgan

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

--> 

<script type="text/javascript">
function changeContent(str)
{
if (str=="")
  {
	// if blank, we'll set our innerHTML to be blank.
	document.getElementById("content").innerHTML="";
	return;
  } 
if (window.XMLHttpRequest)
	{	// code for IE7+, Firefox, Chrome, Opera, Safari
		// create a new XML http Request that will go to our generator webpage.
		xmlhttp=new XMLHttpRequest();
	}
else
	{	// code for IE6, IE5
		// create an activeX object
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	// on state change
	xmlhttp.onreadystatechange=function()
	{
	// if we get a good response from the webpage, display the output
	if (xmlhttp.readyState==4 && xmlhttp.status==200)
	{
		document.getElementById("content").innerHTML=xmlhttp.responseText;
    }
  }
 // use our XML HTTP Request object to send a get to our content php. 
xmlhttp.open("GET","getlist.php?idcustomer="+str, true);
xmlhttp.send();
}
</script>
<?php

$link = mysql_connect('localhost', 'root', 'password');
mysql_select_db('test', $link);

$sql = "select * from customer";

$result = mysql_query($sql);

echo "<select name=\"muppetname\" onchange=\"changeContent(this.value)\">";

while ($ary = mysql_fetch_array($result)){

	echo "<option value=\"" . $ary['idcustomer']  . "\">" . $ary ['customername']  . "</option>";
}

echo "</select>";


?>
<h2>Shopping list:</h2>
<div id="content">(Empty)</div>
<?php


mysql_close($link);

?>