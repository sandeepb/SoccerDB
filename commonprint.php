<?php
function printsidebar()
{
	include_once("sidebar.php");
	print "<div id=\"sidebar\">";
	sidebar();
	print "</div>";

}




function printnav()
{
$navigation="<ul>
	<span class=\"menuitem\"><li><a href=\"teams.php\">Teams</a></li></span>
	<span class=\"menuitem\"><li><a href=\"players.php\">Players</a></li></span>
	<span class=\"menuitem\"><li><a href=\"tickets.php\">Tickets</a></li></span>
</ul>";
print "<div id=\"navigation\">";
print $navigation;
for($i=0;$i<50;$i++)
print "<br>";
print "</div>";
}

function printtitleimage()
{
$titleimage="<img src=\"head.JPG\"></img>";
print "<div id=\"titleimage\">";
print $titleimage;
print "</div>";
	
}

function printheader($pagetitle)
{
print "<html>
<head>
<title>".$pagetitle."</title>
<link href=\"final.css\" rel=\"stylesheet\" type=\"text/css\">
</head>
<body>";
}

function printender()
{
	print "</body></html>";
}

function printdefault($title)
{
 printheader($title);
 printtitleimage();
 printnav();
 printsidebar();
}
?>
