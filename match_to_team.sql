--create trigger team_update after update of home_team_goals on match 
--REFERENCING NEW as newrow
--FOR EACH ROW 
--BEGIN
--	DECLARE
--		goals NUMBER;
--	BEGIN 
--		Select home_goals_scored from team, match into goals where newrow.home_team_id = team_id
--		Update team set home_goals_scored = goals + home_team_goals where team_id = newrow.home_team_id
--	END;
--End team_update;
--.
--run;

create trigger team_update after update on match 
FOR EACH ROW 
BEGIN
	IF :old.home_team_goals IS NULL THEN
	
		Update team set 
		goals_scored = goals_scored + :new.home_team_goals,
		goals_accepted = goals_accepted + :new.away_team_goals,
		goals_difference = goals_difference + :new.home_team_goals - :new.away_team_goals,
		home_goals_scored = home_goals_scored + :new.home_team_goals,
		home_goals_accepted = home_goals_accepted + :new.away_team_goals,
		home_goals_difference = home_goals_difference + :new.home_team_goals - :new.away_team_goals 
		where team_id = :new.home_team_id;

	
		Update team set 
		goals_scored = goals_scored + :new.away_team_goals,
		goals_accepted = goals_accepted + :new.home_team_goals,
		goals_difference = goals_difference + :new.away_team_goals - :new.home_team_goals, 
		away_goals_scored = away_goals_scored + :new.away_team_goals,
		away_goals_accepted = away_goals_accepted + :new.home_team_goals,
		away_goals_difference = away_goals_difference + :new.away_team_goals - :new.home_team_goals 
		where team_id = :new.away_team_id;

	ELSE
		Update team set 
		goals_scored = goals_scored + :new.home_team_goals - :old.home_team_goals,
		goals_accepted = goals_accepted + :new.away_team_goals - :old.away_team_goals,
		goals_difference = goals_difference + :new.home_team_goals - :old.home_team_goals - :new.away_team_goals + :old.away_team_goals,
		home_goals_scored = home_goals_scored + :new.home_team_goals - :old.home_team_goals,
		home_goals_accepted = home_goals_accepted + :new.away_team_goals - :old.away_team_goals,
		home_goals_difference = home_goals_difference + :new.home_team_goals - :old.home_team_goals - :new.away_team_goals + :old.away_team_goals
		where team_id = :new.home_team_id;

	
		Update team set 
		goals_scored = goals_scored + :new.away_team_goals - :old.away_team_goals,
		goals_accepted = goals_accepted + :new.home_team_goals - :old.home_team_goals,
		goals_difference = goals_difference + :new.away_team_goals - :old.away_team_goals - :new.home_team_goals + :old.home_team_goals, 
		away_goals_scored = away_goals_scored + :new.away_team_goals - :old.away_team_goals,
		away_goals_accepted = away_goals_accepted + :new.home_team_goals - :old.home_team_goals,
		away_goals_difference = away_goals_difference + :new.away_team_goals -
:old.away_team_goals - :new.home_team_goals + :old.home_team_goals
		where team_id = :new.away_team_id;
	
	END IF;

END team_update;
.
RUN;

create trigger team_result_update after update on match 
FOR EACH ROW 
BEGIN
	IF :old.match_over = 0 AND :new.match_over = 1	THEN
	
	Update team set 
	matches_played = matches_played + 1,
	home_matches = home_matches + 1
	where team_id = :new.home_team_id;

	Update team set 
	matches_played = matches_played + 1,
	away_matches = away_matches + 1
	where team_id = :new.away_team_id;
	
		IF :new.home_team_goals > :new.away_team_goals	THEN
			Update team set 
			matches_won = matches_won + 1,
			home_wins = home_wins + 1,
			points = points + 3,
			home_points = home_points + 3
			where team_id = :new.home_team_id;

			Update team set 
			matches_lost = matches_lost + 1,
			away_losses = away_losses + 1
			where team_id = :new.away_team_id;
		
		ELSE IF :new.home_team_goals < :new.away_team_goals THEN					   Update team set 
			matches_lost = matches_lost + 1,
			home_losses = home_losses + 1
			where team_id = :new.home_team_id;

			Update team set 
			matches_won = matches_won + 1,
			points = points + 3,
			away_wins = away_wins + 1,
			away_points = away_points + 3
			where team_id = :new.away_team_id;

		ELSE IF :new.home_team_goals = :new.home_team_goals THEN 
			Update team set
			matches_drawn = matches_drawn + 1,
			points = points + 1,
			home_draws = home_draws + 1,
 			home_points = home_points + 1
			where team_id = :new.home_team_id;

			Update team set
			matches_drawn = matches_drawn + 1,
			points = points + 1,
			away_draws = away_draws + 1,
			away_points = away_points + 1
			where team_id = :new.away_team_id;
			
			END IF;
			END IF;
		END IF;
	END IF;

END team_result_update;
.
RUN;
