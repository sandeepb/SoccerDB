<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("Player's performance");
		print "<div id=\"content\">";

		$strplayerid=$_GET['playerid'];
		$intplayerid=intval($strplayerid);

		$playerquery = "select ng.name, ng.photo_filename, ng.team_id,
ng.position, team.name, mp.matches, gc.goalcount, mp.redcards, mp.yellowcards 
		from 	non_goalkeeper ng, 
			team, 
			(select count(*) as goalcount from goals where player_id = $intplayerid) gc, 
			(select count(*) as matches, nvl(sum(red_cards),0) as redcards,
nvl(sum(yellow_cards),0) as yellowcards from match_participation where player_id= $intplayerid) mp 
		where ng.player_id=$intplayerid and ng.team_id=team.team_id";

                $playerresults = getqueryanswer($playerquery);
		$playerresult = $playerresults[0];
		printf("<br>Name : $playerresult[0]");
		printf("<br>Position : $playerresult[3]");
		printf("<br>Team : $playerresult[4]");
		printf("<br>Matches Played : $playerresult[5]");
		printf("<br>Goals Scored : $playerresult[6]");		
		printf("<br>Number of Red Cards : $playerresult[7]");		
		printf("<br>Number of Yellow Cards : $playerresult[8]");
		
		printf("<br><br><br><img src = $playerresult[1]>");
		printender();		
        ?>


