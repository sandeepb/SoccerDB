<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("StadiumPage");
		print "<div id=\"content\">";
		
		for ($sTeamid = 1; $sTeamid <= 5; $sTeamid++)
		{	
			$rowquery="select photo_filename,name,city,capacity from stadium where team_id=$sTeamid";
			$rowarray = getqueryanswer($rowquery);
			$cnt=1;
			$size=1;
			printf("<TABLE border=$size> ");
			foreach($rowarray as $row) 
			{	printf("<TR>");
				printf("<TD><img  src = $row[0]>");
				printf("<br><a href = test1.php?teamid=$sTeamid> $row[1]</a></TD>");
				printf("</TR>");
			}
			printf("</TABLE>");
		}	
		
		printender();
?>
