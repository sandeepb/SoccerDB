<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("Team Composition");
		print "<div id=\"content\">";
		$sTeamid=$_GET['teamid'];
		$intTeamid=intval($sTeamid);

		$rowquery="select photo_filename,name,player_id from non_goalkeeper where team_id=$intTeamid";
		$rowarray = getqueryanswer($rowquery);
		$cnt=1;
		$size=1;
		printf("<TABLE border=$size> ");

		foreach($rowarray as $row)
		{
			if (!(($cnt-1)%3))
			{
				printf("<TR>");
			}
			printf("<TD><img class=\"playerimage\" src = $row[0]>");
			printf("<br><a href = player.php?playerid=$row[2]> $row[1]</a></TD>");
			if (!(($cnt)%3))
			{
				printf("</TR>");
			}

			$cnt++;
		}	
		printf("</TABLE>");
		
		$goalquery="select photo_filename,name,goalkeeper_id from goalkeeper where team_id=$intTeamid";
		$goalarray=getqueryanswer($goalquery);
		$cnt=1;
		$size=1;
		printf("<TABLE border=$size> ");
		foreach($goalarray as $goal)
		{	if (!(($cnt-1)%3))
			{
				printf("<TR>");
			}
			printf("<TD><img class=\"playerimage\" src = $goal[0]>");
			printf("<br><a href = goalkeeper.php?goalkeeper_id=$goal[2]> $goal[1]</a></TD>");
			if (!(($cnt)%3))
			{
				printf("</TR>");
			}
		$cnt++;
		}	
		printf("</TABLE>");

		$coachquery="select photo_filename,name from coach where team_id=$intTeamid";
		$coacharray=getqueryanswer($coachquery);
		$cnt=1;
		$size=1;
		printf("<TABLE border=$size> ");
		foreach($coacharray as $coach)
		{	
			printf("<TD><img class=\"playerimage\" src = $coach[0]>");
			printf("<br> <a href = coachpage.php?teamid=$intTeamid>$coach[1]</a></TD>");
			printf("</TR>");
		}	
		printf("</TABLE>");

		$stadiumquery="select photo_filename,name from stadium where team_id=$intTeamid";
		$stadiumarray=getqueryanswer($stadiumquery);
		$cnt=0;
		$size=1;
		printf("<TABLE border=$size> ");
		foreach($stadiumarray as $stadium)
		{	printf("<TR>");
			printf("<TD><img class=\"playerimage\" src = $stadium[0]>");
			printf("<br> <a href = stadium.php?teamid=$intTeamid> $stadium[1]</TD>");
			printf("</TR>");
			$cnt++;
		}	
		printf("</TABLE>");
		printf("<br>");
		printf("<br>");
		printf("<a href= teampage2.php?teamid=$intTeamid><b>See team's performance this season<b></a>");
		printf("<br>");
		printf("<br>");

		printender();
?>

