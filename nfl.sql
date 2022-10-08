-- 1. List the names of all NFL teams'
select name from teams;

-- 2. List the stadium name and head coach of all NFC teams
select stadium, head_coach from teams where conference = 'NFC';

-- 3. List the head coaches of the AFC South
select head_coach from teams where conference = 'AFC' and division = 'South';

-- 4. The total number of players in the NFL
select count(players) from players;

-- "COMMIT: NFL - queried some NFL stuff"


-- 5. The team names and head coaches of the NFC North and AFC East
select name, head_coach from teams where conference = 'NFC' and division = 'North';
select name, head_coach from teams where conference = 'AFC' and division = 'East';

select name, head_coach from teams
where conference = 'NFC' and division = 'North'
or conference = 'AFC' and division = 'East';

-- 6. The 50 players with the highest salaries https://www.w3schools.com/sql/sql_orderby.asp, https://www.w3schools.com/sql/sql_top.asp
select * from players order by salary desc limit 50;

-- 7. The average salary of all NFL players
select avg(salary) from players;

-- 8. The names and positions of players with a salary above 10_000_000
select name, position from players where salary > 10000000;

-- "COMMIT: NFL - wow there's a lot of nfl data"

-- HUNGRY FOR MORE!!!!!!!

-- 9. The player with the highest salary in the NFL
select * from players order by salary desc limit 1;

-- 10. The name and position of the first 100 players with the lowest salaries
select name, position from players order by salary asc limit 100;

-- 11. The average salary for a DE in the nfl
select avg(salary) from players where position = 'DE';

-- 12. The names of all the players on the Buffalo Bills
select * from players where team_id = 1;

select * from players where team_id = (select id from teams
where name = 'Buffalo Bills');

select players.name join teams on players.team_id = teams.id where teams.name = 'Buffalo Bills';

                                                                                                                      
-- 13. The total salary of all players on the New York Giants
select salary from players where team_id (select id from teams where name = 'New York Giants');  

-- 14. The player with the lowest salary on the Green Bay Packers
-- select name from players where team_id = select id from teams where name 