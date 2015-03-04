create table team 
(team_id  number(8) not null,
name  varchar2(20) not null,
matches_played  number (4,0),
matches_won  number (4,0),
matches_lost  number (4,0), 
matches_drawn  number (4,0),
goals_scored  number (4,0), 
goals_accepted  number (4,0), 
goals_difference  number (4,0),
points  number (4,0),
home_matches  number (4,0),
home_wins  number (4,0),
home_losses  number (4,0),
home_draws  number (4,0),
home_goals_scored  number (4,0),
home_goals_accepted  number (4,0),
home_goals_difference  number (4,0),
home_points  number (4,0),
away_matches  number (4,0),
away_wins  number (4,0),
away_losses  number (4,0),
away_draws  number (4,0),
away_goals_scored  number (4,0),
away_goals_accepted  number (4,0),
away_goals_difference  number (4,0),
away_points  number (4,0),
homepage_link  varchar2(100),
photo_filename  varchar2(100),
constraint pk_team primary key (team_id)
);

commit;

create table match 
(match_id  number(8) not null,
match_date  date,
home_team_id  number(8) not null,
away_team_id  number(8) not null,
home_team_goals  number (4,0),
away_team_goals  number (4,0),
match_over number (2,0),
constraint pk_match primary key (match_id),
constraint fk_match_team_1 foreign key (home_team_id) references team(team_id) on delete cascade deferrable,
constraint fk_match_team_2 foreign key (away_team_id) references team(team_id) on delete cascade deferrable 
);

commit;

create table non_goalkeeper 
(name  varchar2(50) not null,
player_id  number(8) not null,
position  varchar2(30),
team_id  number(8) not null,
photo_filename  varchar2(100),
constraint pk_non_goalkeeper primary key (player_id),
constraint fk_non_goalkeeper_team foreign key (team_id) references team(team_id) on delete cascade deferrable 
);

commit;

create table goalkeeper 
(name  varchar2(50) not null,
goalkeeper_id  number(8) not null,
team_id  number(8) not null,
photo_filename  varchar2(100),
constraint pk_goalkeeper primary key (goalkeeper_id),
constraint fk_goalkeeper_team foreign key (team_id) references team(team_id) on delete cascade deferrable 
);

commit;

create table coach 
(name  varchar2(30) not null,
coach_id  number(8) not null,
team_id  number(8) not null,
photo_filename  varchar2(100),
constraint pk_coach primary key (coach_id),
constraint fk_coach_team foreign key (team_id) references team(team_id) on delete cascade deferrable 
);

commit;

create table stadium 
(stadium_id  number(8) not null,
name  varchar2(30) not null,
city  varchar2(30) not null,						
capacity  number (8,0),
team_id  number(8) not null,
photo_filename  varchar2(100),
constraint pk_stadium primary key (stadium_id),
constraint fk_stadium_team foreign key (team_id) references team(team_id) on delete cascade deferrable 
);

commit;

create table user_account
(user_id  varchar2(30) not null,
password  varchar2(30) not null,
name  varchar2(30) not null,
email  varchar2(30) not null,
role  varchar2(15) not null,
constraint pk_user primary key (user_id)
);

commit;

create table ticket 
(ticket_row_no  char not null,
ticket_seat_no  number (4,0) not null,
ticket_match_id  number(8) not null,
ticket_price number(5),
ticket_sold  number(1),
ticket_user  varchar2(30),
constraint pk_ticket primary key (ticket_row_no, ticket_seat_no, ticket_match_id),
constraint fk_ticket_match foreign key (ticket_match_id) references match(match_id) on delete cascade deferrable 
);
 
commit;

create table match_participation 
(match_id  number(8) not null,
player_id  number(8) not null,
red_cards  number (4,0),
yellow_cards  number (4,0),
constraint pk_match_part primary key (match_id, player_id),
constraint fk_match_part_non_goalkeeper foreign key (player_id) references non_goalkeeper(player_id) on delete cascade deferrable ,
constraint fk_match_part_match foreign key (match_id) references match(match_id) on delete cascade deferrable
);
	
commit;

create table goals 
(match_id number(8) not null,
player_id  number(8) not null,
score_minute number(4) not null,
scoring_method  varchar2(10),
constraint pk_goals primary key (match_id, player_id, score_minute),
constraint fk_goals_match_part foreign key (match_id, player_id) references match_participation(match_id, player_id) on delete cascade deferrable
);

commit;

create table goalkeeper_participation 
(match_id  number(8) not null,
goalkeeper_id  number(8) not null,
red_cards  number (4,0),
yellow_cards  number (4,0),
constraint pk_keeper_part primary key (match_id, goalkeeper_id),
constraint fk_keeper_part_match foreign key (match_id) references match(match_id) on delete cascade deferrable,
constraint fk_keeper_part_keeper foreign key (goalkeeper_id) references goalkeeper(goalkeeper_id) on delete cascade deferrable
);
	
commit;

create table goalkeeper_performance 
(match_id  number(8) not null,
goalkeeper_id  number(8) not null,
time number(4) not null,
effort_type  varchar2(10),
constraint pk_keeper_perf primary key (match_id, goalkeeper_id, time),
constraint fk_keeper_perf_keeper_part foreign key (match_id, goalkeeper_id) references goalkeeper_participation(match_id,goalkeeper_id) on delete cascade deferrable
);

commit;

create table user_favorite_team 
(user_id  varchar2(30) not null,
team_id  number(8) not null,
constraint pk_user_fav_team primary key (user_id, team_id),
constraint fk_user_fav_team_user foreign key (user_id) references user_account(user_id) on delete cascade deferrable,
constraint fk_user_fav_team_team foreign key (team_id) references team(team_id) on delete cascade deferrable
);

commit;
