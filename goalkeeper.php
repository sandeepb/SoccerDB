<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("goalkeeper");
		print "<div id=\"content\">";
		$strgoalkeeperid=$_GET['goalkeeper_id'];
		$intgoalkeeperid=intval($strgoalkeeperid);

		$goalkeeperquery = "select gk.name, gk.photo_filename, gk.team_id, team.name, mp.matches, gs.goalsaved, mp.redcards, mp.yellowcards from 	goalkeeper gk, team,	(select count(*) as goalsaved from goalkeeper_performance where goalkeeper_id = $intgoalkeeperid) gs,(select count(*) as matches, nvl(sum(red_cards),0) as redcards, nvl(sum(yellow_cards),0) as yellowcards from goalkeeper_participation  where goalkeeper_id= $intgoalkeeperid) mp where gk.goalkeeper_id=$intgoalkeeperid and gk.team_id=team.team_id";		

              $playerresults = getqueryanswer($goalkeeperquery);
		$playerresult =  $playerresults[0];

		printf("<br>Name : $playerresult[0]");
		printf("<br>Team : $playerresult[3]");
		printf("<br>Matches Played : $playerresult[4]");
		printf("<br>Goals Saved : $playerresult[5]");		
		printf("<br>Number of Red Cards : $playerresult[6]");		
		printf("<br>Number of Yellow Cards : $playerresult[7]");
	
		printf("<br><br><br><img src = $playerresult[1]>");
		
        ?>
</html>

