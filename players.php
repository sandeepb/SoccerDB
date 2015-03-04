<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printheader("Players of the Season");
		printtitleimage();
		printnav();
		print "<div id=\"content\">";
	
		$query = "select ng.name,ng.player_id, ng.team_id, team.name, nvl(mp.matches,0),
nvl(gc.goalcount,0) as sorter,nvl(mp.redcards,0), nvl(mp.yellowcards,0) 
		from 	non_goalkeeper ng, 
			team ,
		  	(select count(*) as goalcount,player_id from goals group by (player_id)) gc,
			(select count(*) as matches, sum(red_cards) as redcards, sum(yellow_cards) as yellowcards, player_id from match_participation group by player_id) mp 
		where ng.team_id=team.team_id and 
			ng.player_id = gc.player_id(+) and
				ng.player_id = mp.player_id(+)
		order by sorter DESC";

		$rowarray = getqueryanswer($query);		

		$one="1";
		printf("<TABLE border=$one> ");
	        printf("<TR>	<TH>Player
				<TH>Team
				<TH>Matches
				<TH>Goals
				<TH>Red Cards
				<TH>Yellow Cards");

		foreach($rowarray as $row)
		{
        		printf("<TR>	<TD><a href = player.php?playerid=$row[1]>$row[0]</a>
        				<TD>$row[3]
					<TD>$row[4]
					<TD>$row[5]
					<TD>$row[6]
					<TD>$row[7]");
		}
		printf("</TABLE>");
		printender();
	?>


