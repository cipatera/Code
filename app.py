from contextlib import nullcontext
from flask import Flask, render_template, request, redirect, url_for
from flask_mysqldb import MySQL
app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'mysql'
app.config['MYSQL_DB'] = 'nflstats'

mysql = MySQL(app)

@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template("index.html")

@app.route('/submit', methods=['POST'])
def submit():
    if request.method == 'POST':
        dropdown_menu = request.form['stats']
        print(dropdown_menu)
        return redirect(url_for(f'{dropdown_menu}'))

@app.route('/player')
def player():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM player")
    if result > 0:
        player_details = cursor.fetchall()

    cursor.close()
    return render_template("/player.html", player_details=player_details)

@app.route('/team')
def team():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM team")
    if result > 0:
        team_details = cursor.fetchall()

    cursor.close()
    return render_template("/team.html", team_details=team_details)

@app.route('/game')
def game():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM game")
    if result > 0:
        game_details = cursor.fetchall()

    cursor.close()
    return render_template("/game.html", game_details=game_details)

@app.route('/playerStats')
def player_stats():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM player_stats")
    if result > 0:
        player_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("/playerStats.html", player_stats_details=player_stats_details)

@app.route('/gameStats', methods=['GET', 'POST'])
def game_stats():
    cursor = mysql.connection.cursor()

    #result = cursor.execute("SELECT * FROM game_stats")

    result = cursor.execute("SELECT * FROM game_stats")
    if result > 0:
        game_stats_details = cursor.fetchall()

    cursor.close()
    #return render_template("gameStats.html", game_stats_details=game_stats_details)
    return render_template("/gameStats.html", game_stats_details = game_stats_details)

@app.route('/teamStats')
def team_stats():
    cursor = mysql.connection.cursor()
    result = cursor.execute("SELECT * FROM team_stats")
    #team_stats_details = cursor.fetchall()
    if result > 0:
        team_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("/team_stats.html", team_stats_details=team_stats_details)
    
@app.route('/player/<name>')
def player_info(name):
    print(name)
    cursor = mysql.connection.cursor()

    cursor.execute(f"""SELECT 
                            a.kit_number, a.position,
                            b.season, b.running_yards, b.throwing_yards, b.sacks, b.catches, b.touchdowns, b.punt_returns, b.field_goals
                        FROM 
                            player a JOIN player_stats b 
                                ON a.name=b.name
                                AND a.name='{name}'""")
    player_info_details = cursor.fetchall()

    cursor.execute(f"""SELECT
                            pf.franchise, pf.start, pf.end, pf.DOB
                        FROM
                            play_for pf JOIN player p
                                ON pf.name = p.name
                                AND p.DOB = pf.DOB
                                AND pf.name = '{name}'""")
    play_for_team_history = cursor.fetchall()

    cursor.close()
    return render_template("playerInfo.html", 
                            player_info_details = player_info_details, 
                            play_for_team_history = play_for_team_history, 
                            name = name,
                            DOB = play_for_team_history[0][-1])

@app.route('/position/<position_name>',methods=['GET','POST'])
def position_info(position_name):
    #print(name)
    cursor = mysql.connection.cursor()

    cursor.execute(f"""SELECT 
                        p.name, p.DOB, p.kit_number,
                        ps.running_yards, ps.throwing_yards, ps.sacks, ps.catches, ps.touchdowns, ps.punt_returns, ps.field_goals,
                        pf.franchise
                    FROM 
                        player p JOIN play_for pf
                            ON p.name = pf.name 
                            AND p.DOB = pf.DOB
                            AND pf.end = 2021
                            AND p.position = '{position_name}'
                        JOIN player_stats ps
                            ON p.name = ps.name
                            AND ps.season = 2021
                            AND ps.season = pf.end""")
    position_info_details = cursor.fetchall()
    # if result > 0:
    #     positionInfo_details = cursor.fetchall()

    cursor.close()
    return render_template("positionInfo.html", 
                            position_info_details = position_info_details, 
                            position_name = position_name)

@app.route('/franchise/<franchise>', methods=['GET','POST'])
def franchise_info(franchise):
    #print(franchise)
    cursor = mysql.connection.cursor()

    cursor.execute(f"""SELECT *
                        FROM team_stats
                        WHERE franchise = '{franchise}'""")
    team_stats = cursor.fetchall()
    #print(team_stats[0])

    cursor.execute(f"""SELECT city, founded, division
                        FROM team
                        WHERE franchise = '{franchise}'""")
    team = cursor.fetchall()

    cursor.execute(f"""SELECT 
                            p.name, p.DOB, p.kit_number, p.position,
                            ps.running_yards, ps.throwing_yards, ps.sacks, ps.catches, ps.touchdowns, ps.punt_returns, ps.field_goals
                        FROM 
                            player p JOIN play_for pf
                                ON p.name = pf.name 
                                AND p.DOB = pf.DOB
                                AND pf.end = 2021
                                AND pf.franchise = '{franchise}'
                            JOIN player_stats ps
                                ON p.name = ps.name""")
    player_details = cursor.fetchall()
    #print('PLAYER: ' + str(player_details))

    cursor.execute(f"""SELECT gs.date, gs.result, gs.total_yards, gs.pass_yards, gs.rush_yards,
                            g.home_team, g.away_team, g.home_points, g.away_points
                        FROM game_stats gs JOIN game g
                            ON g.date = gs.date
                            AND gs.franchise = '{franchise}'
                            AND (g.home_team = gs.franchise
                                    OR g.away_team = gs.franchise)
                            AND g.date LIKE '2021%'""")
    game_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("franchiseInfo.html", 
                            game_stats_details = game_stats_details, 
                            team_stats = team_stats, 
                            team = team,
                            player_details = player_details)

@app.route('/division/<name>')
def division_info(name):
    print(name)
    cursor = mysql.connection.cursor()


    result = cursor.execute(f"""SELECT division, franchise, city, founded 
                                FROM team 
                                WHERE division='{name}'""")
    if result > 0:
        divisionInfo_details = cursor.fetchall()

    cursor.close()
    return render_template("divisionInfo.html", divisionInfo_details = divisionInfo_details)

@app.route('/season/<season>')
def season_info(season):
    #print(name)
    cursor = mysql.connection.cursor()

    cursor.execute(f"""SELECT franchise, wins, losses, ties, total_points, total_yards, touchdowns, fieldgoals
                        FROM team_stats
                        WHERE season = {season}""")
    team_stats_details = cursor.fetchall()


    cursor.execute(f"""SELECT name, running_yards, throwing_yards, sacks, catches, touchdowns, punt_returns, field_goals
                        FROM player_stats
                        WHERE season = {season}""")
    player_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("seasonInfo.html", 
                            team_stats_details = team_stats_details, 
                            player_stats_details = player_stats_details, 
                            season = season)

@app.route('/week/<week>')
def week_info(week):
    cursor = mysql.connection.cursor()
    cursor.execute(f"""SELECT home_team, away_team, home_points, away_points
                        FROM game
                        WHERE season = 2021
                        AND week = {week}""")
    week_stats_details = cursor.fetchall()
    cursor.close()
    return render_template("weekInfo.html", 
                            week_stats_details = week_stats_details,
                            week = week)




if __name__ == "__main__":
    app.run(debug = True)

