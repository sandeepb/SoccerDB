<?php
function sidebar()
{
	print "\n";
	for($i=0;$i<10;$i++)
		print "<br>";
	print "\n";
	print "<b><center>Team table</center></b>";
	include_once("oralib.php");
	$teams=getqueryanswer("select name,matches_played,matches_won,matches_lost,matches_drawn,points from team order by points");
	print "<table border=\"1\" cellspacing=0 cellpadding=1>\n";
	print "<span class=\"pointstable\"><tr><th>T</th><th>P</th><th>W</th><th>L</th><th>D</th><th>Pts</th></tr>\n";
	foreach ( $teams as $teamrow)
	{
		print "<tr>";
		
		print "<td>$teamrow[0]</td><td>$teamrow[1]</td><td>$teamrow[2]</td><td>$teamrow[3]</td><td>$teamrow[4]</td><td>$teamrow[5]</td>";
		print "</tr>";
	}
	print "</span>";
	print "</table>";
	for($i=0;$i<50;$i++)
		print "<br>";
}
?>
