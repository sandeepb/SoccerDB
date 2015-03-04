create trigger match_update after insert on goals
FOR EACH ROW 
DECLARE	
	tid NUMBER;
	htg NUMBER;
BEGIN	
	select team_id into tid from non_goalkeeper where player_id = 2001;
	select home_team_goals into htg from match where match_id = 1001;
	IF htg IS NULL then
		UPDATE match set home_team_goals = 1
		where match_id=:new.match_id
		and home_team_id = (select team_id from non_goalkeeper 
					where player_id=:new.player_id);

		UPDATE match set away_team_goals = 1
		where match_id=:new.match_id
		and away_team_id = (select team_id from non_goalkeeper 
					where player_id=:new.player_id);

	ELSE
		UPDATE match set home_team_goals=home_team_goals + 1 
		where  match_id= :new.match_id
		and home_team_id = (select team_id from non_goalkeeper
					where player_id = :new.player_id);
	
		UPDATE match set away_team_goals=away_team_goals + 1 
		where  match_id= :new.match_id
		and away_team_id = (select team_id from non_goalkeeper
					where player_id = :new.player_id);
	END IF;
END match_update;
.
RUN;

