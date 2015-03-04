<html>
        <FORM >
                <INPUT TYPE=IMAGE SRC="photos/head.png" NAME="360football">
        </FORM>
        <?php
                include ("oralib.php");
		$strmatchid=$_POST['matchid'];
		$intmatchid=intval($strmatchid);
//		printf("<br>str = $strmatchid, int = $intmatchid");

                $homequery = "select non_goalkeeper.name, non_goalkeeper.player_id, team.name,
team.team_id  
		from non_goalkeeper,team,match 
		where match_id=$intmatchid and 
			match.home_team_id=team.team_id
			and non_goalkeeper.team_id = team.team_id";
                $hometeam = getqueryanswer($homequery);
                $forhometeam=$hometeam[0];
		printf("Select participating players for each team (max 12, min 10)<br>");
              
		printf("$forhometeam[2]<br>");
	printf("<form action=\"insertmp.php\" method=\"get\">");
		printf("<input type=\"hidden\" name=\"matchid\" value=\"$strmatchid\"/>");
                foreach ($hometeam as $player)
                {
			printf("<input type=checkbox name=$player[3] value=$player[1] align=\"left\">
				<a href=player.php?playerid=$player[1]>$player[0] </a>
				</input><br>");
                }
		printf("<input type=\"hidden\" name=\"homeids\" value=\"\"/>");
        
	        $awayquery = "select non_goalkeeper.name, non_goalkeeper.player_id, team.name,
team.team_id  
		from non_goalkeeper,team,match 
		where match_id=$intmatchid and 
			match.away_team_id=team.team_id
			and non_goalkeeper.team_id = team.team_id";
                $awayteam = getqueryanswer($awayquery);
                $forawayteam=$awayteam[0];
		printf("<p><p>$forawayteam[2]<br>");
                
		foreach ($awayteam as $player1)
                {
			printf("<input type=checkbox name=$player1[3] value=$player1[1] align=\"right\">
				<a href=player.php?playerid=$player1[1]>$player1[0] </a>
				</input><br>");
                }
		printf("<input type=\"hidden\" name=\"awayids\" value=\"\"/>");
        
	printf("<br><input type=\"submit\" onclick=\"return setCntOnLoad($forhometeam[3],
$forawayteam[3]);\"
value=\"Submit Team\"/>");
	printf("</form>");
	?>

<script type="text/javascript">

function setCntOnLoad(hometeamid, awayteamid)
{
	var homecnt=0;
	var awaycnt=0;
	var checkboxes = document.getElementsByTagName("input");

	for(var i=0;i<checkboxes.length;i++)
	{
		if(checkboxes[i].type == "checkbox")
		{
			if(checkboxes[i].checked == true)
			{
				if(checkboxes[i].name == hometeamid)
				{
					homecnt++;
					document.getElementById('homeids').value =
document.getElementById('homeids').value + checkboxes[i].value + "+";
				}
				else if (checkboxes[i].name == awayteamid)
				{
					awaycnt++;
					document.getElementById('awayids').value =
document.getElementById('awayids').value + checkboxes[i].value + "+";
				}

			}
		}
	}
	alert(document.getElementById('homeids').value);
	alert(document.getElementById('awayids').value);
	if(homecnt < 10)
	{
		alert("Home Team cannot contain less than 10 players");
		return false;
	} 
	else if (homecnt>12)
	{
		alert("Home Team cannot contain more than 12 players");
		return false;
	} 
	else if(awaycnt < 10)
	{
		alert("Away Team cannot contain less than 10 players");
		return false;
	} 
	else if (awaycnt>12)
	{
		alert("Away Team cannot contain more than 12 players");
		return false;
	}
	else
		return true;
}

</script>

</html>
