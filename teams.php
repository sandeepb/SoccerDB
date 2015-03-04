<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printheader("Team Statistics");
		printtitleimage();
		printnav();
		print "<div id=\"content\">";
		
		$query = "select name,team_id,matches_played,matches_won,matches_lost,matches_drawn,goals_scored,goals_accepted, goals_difference,points,home_matches,home_wins,home_losses,home_draws,home_goals_scored,home_goals_accepted, home_goals_difference,home_points,away_matches,away_wins,away_losses,away_draws,away_goals_scored,away_goals_accepted, away_goals_difference,away_points,homepage_link,photo_filename from team";


		$rowarray = getqueryanswer($query);
		$one="1";
		printf("<TABLE border=$one> ");
	        printf("<TR>	<TH>NAME
				<TH>MP
				<TH>MW
				<TH>ML
				<TH>MD
				<TH>GS
				<TH>GA
				<TH>GD
				<TH>PTS
				<TH>HM
				<TH>HW
				<TH>HL
				<TH>HD
				<TH>HGS
				<TH>HGA
				<TH>HGD
				<TH>HP
				<TH>AM
				<TH>AW
				<TH>AL
				<TH>AD
				<TH>AGS
				<TH>AGA
				<TH>AGD
				<TH>AP
				<TH>HLink");

		foreach($rowarray as $row)
		{
        		printf("<TR>	<TD><a href = teampage1.php?teamid=$row[1]>$row[0]</a>
        				<TD>$row[2]
					<TD>$row[3]
					<TD>$row[4]
					<TD>$row[5]
        				<TD>$row[6]
					<TD>$row[7]
					<TD>$row[8]
					<TD>$row[9]
        				<TD>$row[10]
					<TD>$row[11]
					<TD>$row[12]
					<TD>$row[13]
					<TD>$row[14]
					<TD>$row[15]
        				<TD>$row[16]
					<TD>$row[17]
					<TD>$row[18]
					<TD>$row[19]
        				<TD>$row[20]
					<TD>$row[21]
					<TD>$row[22]
					<TD>$row[23]
					<TD>$row[24]
					<TD>$row[25]
					<TD>$row[26]
				<TR>                ");

					
		}
		printf("</TABLE>");
	        printf("        
				<BR>NAME = Name of the Team
				<BR>MP   = Matches Played
				<BR>MW   = Matches Won
				<BR>ML	 = Matches Lost
				<BR>MD   = Matches Drawn
				<BR>GS   = Goals Scored
				<BR>GA   = Goals Accepted
				<BR>GD   = Goals Difference
				<BR>PTS  = Points
				<BR>HM   = Home Matches
				<BR>HL   = Home Losses
				<BR>HD   = Home Draws
				<BR>HGS  = Home Goals Scored
				<BR>HGA  = Home Goals Accepted
				<BR>HGD  = Home Goals Difference
				<BR>HP   = Home Points
				<BR>AM   = Away Matches
				<BR>AW   = Away Won
				<BR>AL   = Away Losses
				<BR>AD   = Away Drawn
				<BR>AGS  = Away Goals Scored
				<BR>AGA  = Away Goals Accepted
				<BR>AGD  = Away Goals Difference
				<BR>AP   = Away Points
				<BR>HLink= Home Link
				");
		printender();		

	?>