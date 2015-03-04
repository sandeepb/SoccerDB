<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("Match Result");
		print "<div id=\"content\">";
		$strmatchid=$_GET['matchid'];
		$intmatchid=intval($strmatchid);

                $resultquery = "select home.name, away.name, home_team_goals,
away_team_goals,match_id, match_date from match, team home, team away where
match_id = $intmatchid and home_team_id=home.team_id and away_team_id=away.team_id";
	        $matchresults = getqueryanswer($resultquery);
		$matchresult = $matchresults[0];
		printf("Match_id : $matchresult[4], Date : $matchresult[5]");
		printf("<br>home team    away team<br>");
                printf("$matchresult[0]     $matchresult[2]    :    $matchresult[3]
$matchresult[1]<br>");
		
	
		$goalsquery = "select non_goalkeeper.name, score_minute, scoring_method,
team.name from non_goalkeeper, team, goals where non_goalkeeper.player_id=goals.player_id
and team.team_id=non_goalkeeper.team_id and match_id = '$intmatchid' order by score_minute";
	        $goals = getqueryanswer($goalsquery);
		printf("<br>Player , Scoring Minute, Scoring Method, Team<br>");
		foreach ($goals as $goal)
	        {
		        printf("<br>$goal[0]     $goal[1]        $goal[2]
$goal[3]<br>");
		}
		$cardsquery = "select non_goalkeeper.name, red_cards, yellow_cards,
team.name from non_goalkeeper, team, match_participation where non_goalkeeper.player_id= match_participation.player_id and team.team_id=non_goalkeeper.team_id and match_id = 1001";

                $cards = getqueryanswer($cardsquery);
		printf("<br>Player , Red Cards, Yellow Cards, Team<br>");
		foreach ($cards as $card)
	        {
		        printf("<br>$card[0]     $card[1]        $card[2] 	$card[3]<br>");
		}
		printender();				
        ?>
