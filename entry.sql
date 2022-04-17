insert into team (franchise, city, founded, division)
values
('Cardinals', 'Arizona', 1988, 'NFC West'), 
('Falcons', 'Atlanta', 1966, 'NFC South'), 
('Ravens', 'Baltimore', 1996, 'AFC North'), 
('Bills', 'Buffalo', 1960, 'AFC East'), 
('Panthers', 'Carolina', 1995, 'NFC South'), 
('Bears', 'Chicago', 1922, 'NFC North'), 
('Bengals', 'Cincinnati', 1968, 'NFC North'), 
('Browns', 'Cleveland', 1946, 'NFC North'), 
('Cowboys', 'Dallas', 1960, 'NFC East'), 
('Broncos', 'Denver', 1960, 'AFC West'), 
('Lions', 'Detriot', 1934, 'NFC North'), 
('Packers', 'Green Bay', 1921, 'NFC North'), 
('Texans', 'Houston', 2002, 'AFC South'), 
('Colts', 'Indianopolis', 1953, 'AFC South'), 
('Jaguars', 'Jacksonville', 1995, 'AFC South'),
('Chiefs', 'Kansas City', 1963, 'AFC West'),
('Raiders', 'Las Vegas', 1960, 'AFC West'),
('Chargers', 'Los Angeles', 1960, 'AFC West'),
('Rams', 'Los Angeles', 1946, 'NFC West'),
('Dolphins', 'Miami', 1966, 'AFC East'),
('Vikings', 'Minnesota', 1961, 'NFC North'),
('Patriots', 'New England', 1960, 'AFC East'),
('Saints', 'New Orleans', 1967, 'NFC South'),
('Giants', 'New York', 1925, 'NFC East'),
('Jets', 'New York', 1960, 'AFC East'),
('Eagles', 'Philadelphia', 1944, 'NFC East'),
('Steelers', 'Pittsburgh', 1940, 'AFC North'),
('49ers', 'San Francisco', 1946, 'NFC West'),
('Seahawks', 'Seattle', 1976, 'NFC West'),
('Buccaneers', 'Tampa Bay', 1976, 'NFC South'),
('Titans', 'Tennessee', 1960, 'AFC South'),
('Commanders', 'Washington', 1937, 'NFC East');
INSERT INTO player(name,DOB,kit_number,position) VALUES ('Tom Brady','1977-08-03',12,'QB');
INSERT INTO player(name,DOB,kit_number,position) VALUES ('Jonathan Taylor','1999-01-19',28,'RB');
INSERT INTO player(name,DOB,kit_number,position) VALUES ('Cooper Kupp','1993-06-15',10,'WR');
INSERT INTO player(name,DOB,kit_number,position) VALUES ('T.J Watt','1994-10-11',90,'OLB');
INSERT INTO player(name,DOB,kit_number,position) VALUES ('Nick Folk','1984-11-05',6,'K');
INSERT INTO player(name,DOB,kit_number,position) VALUES ('Jalen Reagor','1999-01-02',18,'WR');
INSERT INTO player_stats(name,season,running_yards,throwing_yards,sacks,catches,touchdowns,punt_returns,field_goals) VALUES ('Tom Brady',2020,6,4633,0,0,40,0,0);
INSERT INTO player_stats(name,season,running_yards,throwing_yards,sacks,catches,touchdowns,punt_returns,field_goals) VALUES ('Tom Brady',2021,81,5316,0,0,43,0,0);
INSERT INTO player_stats(name,season,running_yards,throwing_yards,sacks,catches,touchdowns,punt_returns,field_goals) VALUES ('Jonathan Taylor',2021,1811,0,0,0,18,0,0);
INSERT INTO player_stats(name,season,running_yards,throwing_yards,sacks,catches,touchdowns,punt_returns,field_goals) VALUES ('Cooper Kupp',2021,1947,0,0,145,16,0,0);
INSERT INTO player_stats(name,season,running_yards,throwing_yards,sacks,catches,touchdowns,punt_returns,field_goals) VALUES ('T.J Watt',2021,0,0,22,0,0,0,0);
INSERT INTO player_stats(name,season,running_yards,throwing_yards,sacks,catches,touchdowns,punt_returns,field_goals) VALUES ('Nick Folk',2021,0,0,0,0,0,0,36);
INSERT INTO player_stats(name,season,running_yards,throwing_yards,sacks,catches,touchdowns,punt_returns,field_goals) VALUES ('Jalen Reagor',2021,299,0,0,0,0,31,0);

INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Tom Brady','1977-08-03','Patriots',2000,2019);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Tom Brady','1977-08-03','Buccaneers',2020,2021);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Jonathan Taylor','1999-01-19','Colts',2020,2021);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Cooper Kupp','1993-06-15','Rams',2017,2021);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('T.J Watt','1994-10-11','Steelers',2017,2021);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Nick Folk','1984-11-05','Cowboys',2007,2009);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Nick Folk','1984-11-05','Jets',2010,2016);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Nick Folk','1984-11-05','Buccaneers',2017,2017);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Nick Folk','1984-11-05','Patriots',2019,2021);
INSERT INTO play_for(name,DOB,franchise,start,end) VALUES ('Jalen Reagor','1999-01-02','Eagles',2020,2021);

insert into team_stats
values
('Bills', 2021, 11, 6, 0, 483, 6493, 56, 28), 
('Patriots', 2021, 10, 7, 0, 462, 6008, 48, 36), 
('Dolphins', 2021, 9, 8, 0, 341, 5219, 32, 23), 
('Jets', 2021, 4, 13, 0, 310, 5208, 34, 21), 
('Bengals', 2021, 10, 7, 0, 460, 6145, 52, 29), 
('Steelers', 2021, 9, 7, 1, 343, 5361, 33, 36), 
('Browns', 2021, 8, 9, 0, 349, 5791, 41, 16), 
('Titans', 2021, 12, 5, 0, 419, 5822, 45, 26), 
('Colts', 2021, 9, 8, 0, 451, 5901, 49, 29), 
('Texans', 2021, 4, 13, 0, 280, 4727, 29, 21), 
('Jaguars', 2021, 3, 14, 0, 253, 5191, 25, 21), 
('Chiefs', 2021, 15, 5, 0, 480, 6746, 53, 28), 
('Raiders', 2021, 10, 7, 0, 374, 6184, 37, 40), 
('Chargers', 2021, 9, 8, 0, 474, 6634, 56, 24), 
('Broncos', 2021, 7, 10, 0, 335, 5618, 36, 26),
('Cowboys', 2021, 12, 5, 0, 530, 6919, 55, 29), 
('Eagles', 2021, 9, 8, 0, 444, 6119, 45, 30), 
('Commanders', 2021, 7, 10, 0, 335, 5502, 34, 28), 
('Giants', 2021, 4, 13, 0, 258, 4884, 23, 29), 
('Packers', 2021, 13, 4, 0, 450, 6215, 52, 25), 
('Vikings', 2021, 8, 9, 0, 425, 6168, 44, 33), 
('Bears', 2021, 6, 11, 0, 311, 5225, 30, 26), 
('Lions', 2021, 3, 13, 1, 325, 5484, 35, 26), 
('Buccaneers', 2021, 13, 4, 0, 511, 6901, 61, 25), 
('Saints', 2021, 9, 8, 0, 364, 5177, 41, 25), 
('Falcons', 2021, 7, 10, 0, 313, 5164, 31, 27), 
('Panthers', 2021, 5, 12, 0, 304, 5081, 31, 26), 
('Rams', 2021, 12, 5, 0, 460, 6325, 51, 32), 
('Cardinals', 2021, 11, 6, 0, 449, 6352, 50, 30), 
('49ers', 2021, 10, 7, 0, 427, 6387, 48, 27), 
('Seahawks', 2021, 7, 10, 0, 395, 5506, 48, 17);
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-09','Buccaneers','Cowboys',31,29,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Texans','Jaguars',37,21,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Commanders','Chargers',16,20,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Colts','Seahawks',16,28,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Panthers','Jets',19,14,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Bengals','Vikings',27,24,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Titans','Cardinals',13,38,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Lions','49ers',33,41,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Bills','Steelers',16,23,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Falcons','Eagles',6,32,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Chiefs','Browns',33,29,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Saints','Packers',38,3,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Giants','Broncos',13,27,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Patriots','Dolphins',16,17,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-12','Rams','Bears',34,14,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-13','Raiders','Ravens',33,27,1,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-16','Commanders','Giants',30,29,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Jets','Patriots',6,25,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Jaguars','Broncos',13,23,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Dolphins','Bills',0,35,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Eagles','49ers',11,17,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Colts','Rams',24,27,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Steelers','Raiders',17,26,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Bears','Bengals',20,17,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Browns','Texans',31,21,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Panthers','Saints',26,7,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Cardinals','Vikings',34,33,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Buccaneers','Falcons',48,25,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Seahawks','Titans',30,33,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Chargers','Cowboys',17,20,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-19','Ravens','Chiefs',36,35,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-20','Packers','Lions',35,17,2,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-23','Texans','Panthers',9,24,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Titans','Colts',25,16,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Giants','Falcons',14,17,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Chiefs','Chargers',24,30,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Steelers','Bengals',10,24,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Browns','Bears',26,6,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Lions','Ravens',17,19,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Patriots','Saints',13,28,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Jaguars','Cardinals',19,31,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Bills','Commanders',43,21,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Broncos','Jets',26,0,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Raiders','Dolphins',31,28,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Vikings','Seahawks',30,17,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','Rams','Buccaneers',34,24,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-26','49ers','Packers',28,30,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-27','Cowboys','Eagles',41,21,3,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-09-30','Bengals','Jaguars',24,21,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Jets','Titans',27,24,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Eagles','Chiefs',30,42,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Cowboys','Panthers',36,28,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Saints','Giants',21,27,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Vikings','Browns',7,14,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Bears','Lions',24,14,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Bills','Texans',40,0,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Dolphins','Colts',17,27,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Falcons','Commanders',30,34,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','49ers','Seahawks',21,28,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Rams','Cardinals',20,37,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Packers','Steelers',27,17,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Broncos','Ravens',7,23,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-03','Patriots','Buccaneers',17,19,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-04','Chargers','Raiders',28,14,4,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-07','Seahawks','Rams',17,26,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Falcons','Jets',27,20,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Vikings','Lions',19,17,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Commanders','Saints',22,33,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Texans','Patriots',22,25,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Buccaneers','Dolphins',45,17,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Bengals','Packers',22,25,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Steelers','Broncos',27,19,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Panthers','Eagles',18,21,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Jaguars','Titans',19,37,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Chargers','Browns',47,42,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Raiders','Bears',9,20,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Cardinals','49ers',17,10,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Cowboys','Giants',44,20,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-10','Chiefs','Bills',20,38,5,2021,'Regular Season');
INSERT INTO game(date,home_team,away_team,home_points,away_points,week,season,type) VALUES ('2021-10-11','Ravens','Colts',31,25,5,2021,'Regular Season');

INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bills','2021-09-12','L',371,254,117);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bills','2021-09-19','W',314,171,143);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bills','2021-09-26','W',481,359,122);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bills','2021-10-03','W',450,251,199);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bills','2021-10-10','W',436,315,121);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Patriots','2021-09-12','L',393,268,125);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Patriots','2021-09-19','W',260,159,101);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Patriots','2021-09-26','L',300,251,49);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Patriots','2021-10-03','L',294,295,-1);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Patriots','2021-10-10','W',352,226,216);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Dolphins','2021-09-12','W',259,185,74);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Dolphins','2021-09-19','L',223,152,71);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Dolphins','2021-09-26','L',330,197,133);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Dolphins','2021-10-03','L',203,168,35);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Dolphins','2021-10-10','L',301,262,39);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jets','2021-09-12','L',252,207,45);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jets','2021-09-19','L',336,184,152);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jets','2021-09-26','L',162,119,43);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jets','2021-10-03','W',355,289,66);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jets','2021-10-10','L',230,166,64);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bengals','2021-09-12','W',366,217,149);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bengals','2021-09-19','L',248,179,69);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bengals','2021-09-26','W',268,172,96);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bengals','2021-09-30','W',420,342,78);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bengals','2021-10-10','L',367,264,103);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Steelers','2021-09-12','W',252,177,75);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Steelers','2021-09-19','L',331,292,39);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Steelers','2021-09-26','L',342,297,45);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Steelers','2021-10-03','L',282,220,62);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Steelers','2021-10-10','W',391,244,147);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Browns','2021-09-12','L',457,304,153);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Browns','2021-09-19','W',355,199,156);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Browns','2021-09-26','W',418,203,215);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Browns','2021-10-03','W',327,143,184);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Browns','2021-10-10','L',531,301,230);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Ravens','2021-09-13','L',406,217,189);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Ravens','2021-09-19','W',481,230,251);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Ravens','2021-09-26','W',387,271,116);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Ravens','2021-10-03','W',406,304,102);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Ravens','2021-10-10','W',523,437,86);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Titans','2021-09-12','L',248,162,86);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Titans','2021-09-19','W',532,320,212);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Titans','2021-09-26','W',368,188,180);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Titans','2021-10-03','L',430,253,177);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Titans','2021-10-10','W',368,184,184);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Colts','2021-09-12','L',336,223,113);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Colts','2021-09-19','L',354,245,109);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Colts','2021-09-26','L',265,178,87);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Colts','2021-10-03','W',349,210,139);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Colts','2021-10-11','L',513,390,123);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Texans','2021-09-12','W',449,289,160);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Texans','2021-09-19','L',302,220,82);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Texans','2021-09-23','L',193,151,42);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Texans','2021-10-03','L',109,61,48);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Texans','2021-10-10','L',360,293,67);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jaguars','2021-09-12','L',395,319,76);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jaguars','2021-09-19','L',189,114,75);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jaguars','2021-09-26','L',361,202,159);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jaguars','2021-09-30','L',341,202,139);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Jaguars','2021-10-10','L',454,256,198);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chiefs','2021-09-12','W',397,324,73);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chiefs','2021-09-19','L',405,343,62);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chiefs','2021-09-26','L',437,251,186);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chiefs','2021-10-03','W',471,271,200);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chiefs','2021-10-10','L',392,272,120);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Raiders','2021-09-13','W',491,409,82);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Raiders','2021-09-19','W',425,373,52);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Raiders','2021-09-26','W',497,357,140);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Raiders','2021-10-04','L',213,165,48);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Raiders','2021-10-10','L',259,188,71);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chargers','2021-09-12','W',424,334,90);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chargers','2021-09-19','L',408,313,95);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chargers','2021-09-26','W',352,275,77);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chargers','2021-10-04','W',380,212,168);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Chargers','2021-10-10','W',493,381,112);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Broncos','2021-09-12','W',420,255,165);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Broncos','2021-09-19','W',398,302,96);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Broncos','2021-09-26','W',343,223,120);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Broncos','2021-10-03','L',254,148,106);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Broncos','2021-10-10','L',374,268,106);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cowboys','2021-09-09','L',451,391,60);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cowboys','2021-09-19','W',419,221,198);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cowboys','2021-09-27','W',380,220,160);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cowboys','2021-10-03','W',433,188,245);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cowboys','2021-10-10','W',515,314,201);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Eagles','2021-09-12','W',434,261,173);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Eagles','2021-09-19','L',328,177,151);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Eagles','2021-09-27','L',367,303,64);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Eagles','2021-10-03','L',461,358,103);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Eagles','2021-10-10','W',273,182,91);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Commanders','2021-09-12','L',259,133,126);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Commanders','2021-09-16','W',407,320,87);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Commanders','2021-09-26','L',290,212,78);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Commanders','2021-10-03','W',412,290,122);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Commanders','2021-10-10','L',373,242,131);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Giants','2021-09-12','L',314,254,60);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Giants','2021-09-16','L',391,228,163);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Giants','2021-09-26','L',346,246,100);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Giants','2021-10-03','W',485,402,83);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Giants','2021-10-10','L',367,294,73);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Packers','2021-09-12','L',229,186,43);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Packers','2021-09-20','W',323,227,96);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Packers','2021-09-26','W',353,253,100);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Packers','2021-10-03','W',367,236,131);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Packers','2021-10-10','W',466,333,133);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Vikings','2021-09-12','L',403,336,67);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Vikings','2021-09-19','L',419,242,177);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Vikings','2021-09-26','W',453,313,140);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Vikings','2021-10-03','L',255,190,65);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Vikings','2021-10-10','W',384,264,120);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bears','2021-09-12','L',322,188,134);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bears','2021-09-19','W',206,83,123);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bears','2021-09-26','L',47,1,46);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bears','2021-10-03','W',373,185,188);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Bears','2021-10-10','W',252,109,143);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Lions','2021-09-12','L',430,314,116);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Lions','2021-09-20','L',344,236,108);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Lions','2021-09-26','L',285,192,93);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Lions','2021-10-03','L',351,261,90);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Lions','2021-10-10','L',288,180,108);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Buccaneers','2021-09-09','W',431,379,52);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Buccaneers','2021-09-19','W',341,259,82);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Buccaneers','2021-09-26','L',446,411,35);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Buccaneers','2021-10-03','W',381,261,120);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Buccaneers','2021-10-10','W',558,437,121);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Saints','2021-09-12','W',322,151,171);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Saints','2021-09-19','L',128,80,48);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Saints','2021-09-26','W',252,110,142);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Saints','2021-10-03','L',405,235,170);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Saints','2021-10-10','W',369,271,98);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Falcons','2021-09-12','L',260,136,124);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Falcons','2021-09-19','L',348,293,55);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Falcons','2021-09-26','W',296,227,69);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Falcons','2021-10-03','L',374,275,99);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Falcons','2021-10-10','W',450,342,108);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Panthers','2021-09-12','W',381,270,111);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Panthers','2021-09-19','W',383,294,89);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Panthers','2021-09-23','W',407,290,117);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Panthers','2021-10-03','L',379,266,113);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Panthers','2021-10-10','L',267,158,109);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Rams','2021-09-12','W',386,312,74);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Rams','2021-09-19','W',371,270,101);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Rams','2021-09-26','W',407,331,76);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Rams','2021-10-03','L',401,280,121);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Rams','2021-10-07','W',476,358,118);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cardinals','2021-09-12','W',416,280,136);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cardinals','2021-09-19','W',474,371,103);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cardinals','2021-09-26','W',407,316,91);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cardinals','2021-10-03','W',465,249,216);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Cardinals','2021-10-10','W',304,210,94);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('49ers','2021-09-12','W',442,311,131);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('49ers','2021-09-19','W',306,189,117);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('49ers','2021-09-26','L',298,231,67);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('49ers','2021-10-03','L',457,314,143);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('49ers','2021-10-10','L',338,186,152);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Seahawks','2021-09-12','W',381,241,140);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Seahawks','2021-09-19','L',397,320,77);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Seahawks','2021-09-26','L',389,283,106);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Seahawks','2021-10-03','W',234,129,105);
INSERT INTO game_stats(franchise,date,result,total_yards,pass_yards,rush_yards) VALUES ('Seahawks','2021-10-07','L',354,262,92);
