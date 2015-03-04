create trigger match_part after insert on match_participation
FOR EACH ROW 
DECLARE	
	htg NUMBER;
	atg NUMBER;
BEGIN	
	select home_team_goals, away_team_id into htg, atg from match where match_id = :new.match_id;
	
	IF htg IS NULL then
		UPDATE match set home_team_goals = 0, away_team_goals = 0
		where match_id=:new.match_id;

	END IF;
END match_update;
.
RUN;

