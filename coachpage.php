<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("Coachpage");
		print "<div id=\"content\">";
		$sTeamid=$_GET['teamid'];
		$intTeamid=intval($sTeamid);
	

		$coachquery="select name, coach_id,photo_filename from coach where team_id=$intTeamid";

	 $coachresults = getqueryanswer($coachquery);
$coachresult=$coachresults[0];
		printf("<br>Name : $coachresult[0]");
		printf("<br>Coachid : $coachresult[1]");
		printf("<br><br><br><img src = $coachresult[2]>")
?>