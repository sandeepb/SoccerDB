<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printdefault("Team Performance");
		print "<div id=\"content\">";

		$strteamid=$_GET['teamid'];
		$intteamid=intval($strteamid);

		$query = "select name,team_id,matches_played,matches_won,matches_lost,matches_drawn,goals_scored,goals_accepted, goals_difference,points,home_matches,home_wins,home_losses,home_draws,home_goals_scored,home_goals_accepted, home_goals_difference,home_points,away_matches,away_wins,away_losses,away_draws,away_goals_scored,away_goals_accepted, away_goals_difference,away_points,homepage_link,photo_filename from team where team_id=$intteamid";


		$rowarray = getqueryanswer($query);
		$row=$rowarray[0];
		$one="1";
		printf("<TABLE border=$one> ");
	        printf("	<TR><TH>Name of the Team<TD><a href = teampage1.php?teamid=$row[1]>$row[0]</a>
				<TR><TH>Matches Played<TD>$row[2]
				<TR><TH>Matches Won<TD>$row[3]
				<TR><TH>Matches Lost<TD>$row[4]
				<TR><TH>Matches Drawn<TD>$row[5]
				<TR><TH>Goals Scored<TD>$row[6]
				<TR><TH>Goals Accepted<TD>$row[7]
				<TR><TH>Goals Difference<TD>$row[8]
				<TR><TH>Points<TD>$row[9]
				<TR><TH>Home Matches<TD>$row[10]
				<TR><TH>Home Wins<TD>$row[11]
				<TR><TH>Home Losses<TD>$row[12]
				<TR><TH>Home Draws<TD>$row[13]
				<TR><TH>Home Goals Scored<TD>$row[14]
				<TR><TH>Home Goals Accepted<TD>$row[15]
				<TR><TH>Home Goals Difference<TD>$row[16]
				<TR><TH>Home Points<TD>$row[17]
				<TR><TH>Away Matches<TD>$row[18]
				<TR><TH>Away Wins<TD>$row[19]
				<TR><TH>Away Losses<TD>$row[20]
				<TR><TH>Away Draws<TD>$row[21]
				<TR><TH>Away Goals Scored<TD>$row[22]
				<TR><TH>Away Goals Accepted<TD>$row[23]
				<TR><TH>Away Goals Difference<TD>$row[24]
				<TR><TH>Away Points<TD>$row[25]
				<TR><TH>Homepage Link<TD>$row[26]");

 
        				
		printf("</TABLE>");
	       
		printender();		

	?>