insert into team values (1, 'Arsenal',
0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 'http://www.arsenal.com','photos/Arsenal/Arsenal_crest.jpg');

insert into team values (2, 'Chelsea',
0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 'http://www.chelseafc.com','photos/Chelsea/Chelsea_crest.jpg');

insert into team values (3, 'Liverpool',
0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 'http://www.liverpoolfc.tv','photos/Liverpool/Liverpool_crest.jpg');

insert into team values (4, 'Manchester
United', 0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 'http://www.manutd.com',
'photos/Manchester_United/Manu_crest.jpg');

insert into team values (5, 'Tottenham',
0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 0,0,0,0, 0,0,0, 0, 'http://www.tottenhamhotspur.com','photos/Tottenham/Tottenham_crest.jpg');

commit;
insert into match values (1001,to_date('2005-12-10','YYYY-MM-DD'), 1, 2, 0, 0,0);
insert into match values (1002,to_date('2005-12-10','YYYY-MM-DD'), 3, 4, 0, 0,0);

insert into match values (1003,to_date('2005-12-12','YYYY-MM-DD'), 1, 3, 0, 0, 0);
insert into match values (1004,to_date('2005-12-12','YYYY-MM-DD'), 2, 5, 0, 0, 0);

insert into match values (1005,to_date('2005-12-14','YYYY-MM-DD'), 3, 5, 0, 0, 0);
insert into match values (1006,to_date('2005-12-14','YYYY-MM-DD'), 4, 1, 0, 0, 0);

insert into match values (1007,to_date('2005-12-16','YYYY-MM-DD'), 5, 1, 0, 0, 0);
insert into match values (1008,to_date('2005-12-16','YYYY-MM-DD'), 3, 2, 0, 0, 0);

insert into match values (1009,to_date('2005-12-18','YYYY-MM-DD'), 1, 4, 0, 0, 0);
insert into match values (1010,to_date('2005-12-18','YYYY-MM-DD'), 1, 5, 0, 0, 0);

insert into match values (1011,to_date('2005-12-20','YYYY-MM-DD'), 5, 2, 0, 0, 0);
insert into match values (1012,to_date('2005-12-20','YYYY-MM-DD'), 4, 3, 0, 0, 0);

insert into match values (1013,to_date('2005-12-22','YYYY-MM-DD'), 4, 5, 0, 0, 0);
insert into match values (1014,to_date('2005-12-22','YYYY-MM-DD'), 3, 1, 0, 0, 0);

insert into match values (1015,to_date('2005-12-24','YYYY-MM-DD'), 5, 3, 0, 0, 0);
insert into match values (1016,to_date('2005-12-24','YYYY-MM-DD'), 2, 4, 0, 0, 0);

insert into match values (1017,to_date('2005-12-26','YYYY-MM-DD'), 2, 3, 0, 0, 0);
insert into match values (1018,to_date('2005-12-26','YYYY-MM-DD'), 4, 2, 0, 0, 0);

insert into match values (1019,to_date('2005-12-28','YYYY-MM-DD'), 2, 1, 0, 0, 0);
insert into match values (1020,to_date('2005-12-28','YYYY-MM-DD'), 5, 4, 0, 0, 0);

commit;

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Dennis Bergkamp',2001,'Striker',1,'photos/Arsenal/bergkamp_dennis_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Sol Campbell',2002,'Center Back',1,'photos/Arsenal/campbell_sol_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Ashley Cole',2003,'Left Back',1,'photos/Arsenal/cole_ashley_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Cesc Fabrages',2004,'Center Half',1,'photos/Arsenal/fabregas_cesc_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Mathieu Flamini',2005,'Center Half',1,'photos/Arsenal/flamini_mathieu_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Thierry Henry',2006,'Striker',1,'photos/Arsenal/henry_thierry_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Sebastian Larsson',2007,'Right Back',1,'photos/Arsenal/larsson_sebastian_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Etame Lauren',2008,'Right Back',1,'photos/Arsenal/lauren_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Freddie Ljungberg',2009,'Left Forward',1,'photos/Arsenal/ljungberg_freddie_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Robert Pires',2010,'Right Forward',1,'photos/Arsenal/pires_robert_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Jose Reyes',2011,'Striker',1,'photos/Arsenal/reyes_jose_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Philippe Sendros',2012,'Center Back',1,'photos/Arsenal/senderos_philippe_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Gilberto Silva',2013,'Center Half',1,'photos/Arsenal/silva_gilberto_afc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Kolo Toure',2014,'Center Back',1,'photos/Arsenal/toure_kolo_afc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Jens Lehmann',3001,1,'photos/Arsenal/lehmann_jens_afc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Mart Poom',3002,1,'photos/Arsenal/poom_mart_safc_profile_2005.jpg');

insert into coach (name, coach_id, team_id, photo_filename) values('Arsene Wenger',4001,1,'photos/Arsenal/wenger_arsene_afc_profile_2005.jpg');

commit;

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Wayne Bridge',2101,'Left Back',2,'photos/Chelsea/bridge_wayne_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Ricardo Carvalho',2102,'Center Back',2,'photos/Chelsea/carvalho_ricardo_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Claude Makelele',2103,'Center Half',2,'photos/Chelsea/claude_makelele_chelsea_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Joe Cole',2104,'Left Half',2,'photos/Chelsea/cole_joe_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Hernan Crespo',2105,'Striker',2,'photos/Chelsea/crespo_hernan_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Didier Drogba',2106,'Striker',2,'photos/Chelsea/drogba_didier_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Damien Duff',2107,'Left Half',2,'photos/Chelsea/duff_damien_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Paulo Ferreira',2108,'Right Back',2,'photos/Chelsea/ferreira_paulo_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('William Gallas',2109,'Center Back',2,'photos/Chelsea/gallas_william_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Eider Gudjohnsen',2110,'Striker',2,'photos/Chelsea/gudjohnsen_eidur_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Asier Del Horno',2111,'Left Back',2,'photos/Chelsea/horno_del_asier_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Frank Lampard',2112,'Center Half',2,'photos/Chelsea/lampard_frank_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Arjen Robben',2113,'Right Forward',2,'photos/Chelsea/robben_arjen_cfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('John Terry',2114,'Center Back',2,'photos/Chelsea/terry_john_cfc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Petr Cech',3101,2,'photos/Chelsea/cech_petr_cfc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Carlo Cudicini',3102,2,'photos/Chelsea/cudicini_carlo_cfc_profile_2005.jpg');

insert into coach (name, coach_id, team_id, photo_filename) values('Jose Mourinho',4101,2,'photos/Chelsea/mourinho_jose_cfc_profile_2005.jpg');

commit;

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Xabi Alonso',2201,'Center Half',3,'photos/Liverpool/alonso_xabi_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Jamie Charracher',2202,'Center Back',3,'photos/Liverpool/carracher_jamie_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Djibrail Cisse',2203,'Striker',3,'photos/Liverpool/cisse_djibril_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Darren Potter',2204,'Center Half',3,'photos/Liverpool/potter_darren_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('David Raven',2205,'Right Back',3,'photos/Liverpool/raven_david_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Steven Finnan',2206,'Right Back',3,'photos/Liverpool/finnan_stephen_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Luis Garcia',2207,'Right Half',3,'photos/Liverpool/garcia_luis_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Steven Gerrard',2208,'Center Half',3,'photos/Liverpool/gerrard_steven_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Sami Hyypia',2209,'Center Back',3,'photos/Liverpool/hyypia_sami_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Fernando Morientes',2210,'Striker',3,'photos/Liverpool/morientes_fernando_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('John Arne Riise',2211,'Left Half',3,'photos/Liverpool/riise_john_arne_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Djimi Traore',2212,'Left Back',3,'photos/Liverpool/traore_djimi_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Zak Whitbread',2213,'Center Back',3,'photos/Liverpool/whitbread_zak_lfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Boudewijn Zenden',2214,'Right Half',3,'photos/Liverpool/zenden_bolo_lfc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Jerzy Dudek',3201,3,'photos/Liverpool/dudek_jerzy_lfc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Jose Reina',3202,3,'photos/Liverpool/reina_jose_lfc_profile_2005.jpg');

insert into coach (name, coach_id, team_id, photo_filename) values('Rafael Benitez',4201,3,'photos/Liverpool/benitez_rafael_lfc_profile_2005.jpg');

commit;

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Wes Browne',2301,'center Back',4,'photos/Manchester_United/brown_wes_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Rio Ferdinand',2302,'Center Back',4,'photos/Manchester_United/ferdinand_rio_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Ryan Giggs',2303,'Left Half',4,'photos/Manchester_United/giggs_ryan_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Gabriel Heinze',2304,'Left Back',4,'photos/Manchester_United/heinze_gabriel_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Roy Keane',2305,'Center Half',4,'photos/Manchester_United/keane_roy_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Gary Neville',2306,'Left Back',4,'photos/Manchester_United/neville_gary_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('John Oshea',2307,'Center Half',4,'photos/Manchester_United/oshea_john_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Quinton Fortune',2308,'Left Half',4,'photos/Manchester_United/quinton_fortune_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Christiano Ronaldo',2309,'Right Forward',4,'photos/Manchester_United/ronaldo_cristiano_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Wayne Rooney',2310,'Striker',4,'photos/Manchester_United/rooney_wayne_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Paul Scholes',2311,'Center Half',4,'photos/Manchester_United/scholes_paul_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Mikael Silvestre',2312,'Center Back',4,'photos/Manchester_United/silvestre_mikael_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Ole Gunnar Solskjaer',2313,'Striker',4,'photos/Manchester_United/solskjaer_ole_gunnar_mufc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Ruud Van Nistelroy',2314,'Striker',4,'photos/Manchester_United/van_nistelrooy_ruud_mufc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Tim
Howard',3301,4,'photos/Manchester_United/howard_tim_mufc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Edwin van
der Sar',3302,4,'photos/Manchester_United/van_der_sar_edwin_mufc_profile_2005.jpg');

insert into coach (name, coach_id, team_id, photo_filename) values('Sir Alex
Fergusson',4301,4,'photos/Manchester_United/ferguson_sir_alex_mufc_profile_2005.jpg');

commit;

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Michael Brown',2401,'Center Half',5,'photos/Tottenham/brown_michael_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Edgar Davids',2402,'Center Half',5,'photos/Tottenham/davids_edgar_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Michael Dawson',2403,'Left Back',5,'photos/Tottenham/dawson_michael_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Jermain Defoe',2404,'Striker',5,'photos/Tottenham/defoe_jermain_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Jermaine Jenas',2405,'Center Half',5,'photos/Tottenham/jenas_jermaine_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Robbie Keane',2406,'Striker',5,'photos/Tottenham/keane_robbie_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Stephen Kelly',2407,'Left Half',5,'photos/Tottenham/kelly_stephen_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Ledley King',2408,'Center Back',5,'photos/Tottenham/king_ledley_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Aaron Lennon',2409,'Left Half',5,'photos/Tottenham/lennon_aaron_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Young-Pyo Lee',2410,'Right Back',5,'photos/Tottenham/pyo_young_lee_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Grzegorz Rasiak',2411,'Striker',5,'photos/Tottenham/rasiak_grzegorz_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Andrew Reid',2412,'Left Half',5,'photos/Tottenham/reid_andy_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Wayne Routledge',2413,'Right Half',5,'photos/Tottenham/routledge_wayne_thfc_profile_2005.jpg');

insert into non_goalkeeper (name, player_id, position, team_id, photo_filename)
values('Paul Stalteri',2414,'Center Back',5,'photos/Tottenham/stalteri_paul_thfc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Marton Fulop',3401,5,'photos/Tottenham/fulop_marton_thfc_profile_2005.jpg');

insert into goalkeeper (name, goalkeeper_id, team_id, photo_filename) values('Paul Robinson',3402,5,'photos/Tottenham/robinson_paul_thfc_profile_2005.jpg');

insert into coach (name, coach_id, team_id, photo_filename) values('Martin Jol',4401,5,'photos/Tottenham/jol_martin_thfc_profile_2005.jpg');

commit;

insert into stadium (stadium_id, name, city, capacity, team_id, photo_filename) values
(5001,'Highburry','London',38500, 1,'photos/Arsenal/highbury1.jpg');

insert into stadium (stadium_id, name, city, capacity, team_id, photo_filename) values
(5002,'Stamford Bridge','London',42420,2,'photos/Chelsea/stamfordbridge1.jpg');

insert into stadium (stadium_id, name, city, capacity, team_id, photo_filename) values 
(5003,'Anfield','London',45365,3,'photos/Liverpool/anfield1.jpg');

insert into stadium (stadium_id, name, city, capacity, team_id, photo_filename) values
(5004,'Old Trafford','Manchester',68164,4,'photos/Manchester_United/oldtrafford1.jpg');

insert into stadium (stadium_id, name, city, capacity, team_id, photo_filename) values
(5005,'White Hart Lane','London',36236,5,'photos/Tottenham/whitehartlane1.jpg');

commit;
