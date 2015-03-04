<?php
		include_once("commonprint.php");
		include_once("oralib.php");
		printheader("Goalkeepers");
		printtitleimage();
		printnav();
		print "<div id=\"content\">";

		$query = "select gk.name,gk.goalkeeper_id, team.name, nvl(mp.matches,0), nvl(gs.goalsaved,0) as sorter,nvl(mp.redcards,0), nvl(mp.yellowcards,0) 
		from 	goalkeeper gk, 
			team ,
		  	(select count(*) as goalsaved, goalkeeper_id from goalkeeper_performance group by (goalkeeper_id)) gs,
			(select count(*) as matches, sum(red_cards) as redcards, sum(yellow_cards) as yellowcards, goalkeeper_id from goalkeeper_participation group by (goalkeeper_id)) mp 
		where gk.team_id=team.team_id and 
			gk.goalkeeper_id = gs.goalkeeper_id(+) and
				gk.goalkeeper_id = mp.goalkeeper_id(+)
		order by sorter DESC";
	
		$rowarray = getqueryanswer($query);		

		$one=1;
		 printf("<TABLE border=$one> ");
	        printf("<TR>	<TH>Player
				<TH>Team
				<TH>Matches	
				<TH>Goals
				<TH>Red Cards
				<TH>Yellow Cards");

		foreach($rowarray as $row)
		{
        		printf("<TR>	<TD><a href = goalkeeper.php?goalkeeper_id=$row[1]>$row[0]</a>
        				<TD>$row[2]
					<TD>$row[3]
					<TD>$row[4]
					<TD>$row[5]
					<TD>$row[6]");
		}
		printf("</TABLE>");

	?>
</html>

