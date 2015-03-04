<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("Stadium");
		print "<div id=\"content\">";
		$sTeamid=$_GET['teamid'];
		$intTeamid=intval($sTeamid);

		$stadiumquery="select stadium_id, name, city,capacity,photo_filename from stadium where team_id=$intTeamid";

		$stadiumresults = getqueryanswer($stadiumquery);
	
		$stadiumresult=$stadiumresults[0];
	
		printf("<br>Name : $stadiumresult[1]");
		printf("<br>Stadiumid : $stadiumresult[0]");
		printf("<br>City : $stadiumresult[2]");
		printf("<br>Capacity :  $stadiumresult[3]");
		printf("<br><br><br><img src = $stadiumresult[4]>");
?>