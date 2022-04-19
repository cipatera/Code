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
        #dropdown_menu = request.form.get('stats')
        print(dropdown_menu)
        return redirect(url_for(f'{dropdown_menu}'))

@app.route('/player')
def player():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM player")
    if result > 0:
        player_details = cursor.fetchall()

    cursor.close()
    return render_template("player.html", player_details=player_details)

@app.route('/team')
def team():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM team")
    if result > 0:
        team_details = cursor.fetchall()

    cursor.close()
    return render_template("team.html", team_details=team_details)

@app.route('/game')
def game():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM game")
    if result > 0:
        game_details = cursor.fetchall()

    cursor.close()
    return render_template("game.html", game_details=game_details)

@app.route('/playerStats')
def player_stats():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM player_stats")
    if result > 0:
        player_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("playerStats.html", player_stats_details=player_stats_details)

@app.route('/play_for')
def play_for():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM play_for")
    if result > 0:
        play_for_details = cursor.fetchall()

    cursor.close()
    return render_template("play_for.html", play_for_details=play_for_details)

@app.route('/gameStats', methods=['GET', 'POST'])
def game_stats():
    cursor = mysql.connection.cursor()

    #result = cursor.execute("SELECT * FROM game_stats")

    result = cursor.execute("SELECT a.name, a.DOB, a.kit_number, a.position, b.season, b.running_yards, b.throwing_yards, b.sacks, b.catches, b.touchdowns, b.punt_returns, b.field_goals, c.franchise, c.start, c.end FROM player a JOIN player_stats b ON a.name=b.name JOIN play_for c ON b.name=c.name")
    if result > 0:
        #game_stats_details = cursor.fetchall()
        test_details = cursor.fetchall()

    cursor.close()
    #return render_template("gameStats.html", game_stats_details=game_stats_details)
    return render_template("test.html", test_details = test_details)

@app.route('/teamStats')
def team_stats():
    cursor = mysql.connection.cursor()
    result = cursor.execute("SELECT * FROM team_stats")
    if result > 0:
        team_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("team_stats.html", team_stats_details=team_stats_details)
@app.route('/player/<name>', methods=['GET', 'POST'])
def player_info(name):
    print(name)
    cursor = mysql.connection.cursor()


    result = cursor.execute(f"SELECT a.name, a.DOB, a.kit_number, a.position, b.season, b.running_yards, b.throwing_yards, b.sacks, b.catches, b.touchdowns, b.punt_returns, b.field_goals, c.franchise, c.start, c.end FROM player a JOIN player_stats b ON a.name=b.name JOIN play_for c ON b.name=c.name WHERE a.name='{name}'")
    if result > 0:
        playerInfo_details = cursor.fetchall()

    cursor.close()
    return render_template("playerInfo.html", playerInfo_details = playerInfo_details)

@app.route('/position/<name>', methods=['GET', 'POST'])
def position_info(name):
    print(name)
    cursor = mysql.connection.cursor()


    result = cursor.execute(f"SELECT a.position, a.name, a.DOB, a.kit_number, b.season, b.running_yards, b.throwing_yards, b.sacks, b.catches, b.touchdowns, b.punt_returns, b.field_goals, c.franchise, c.start, c.end FROM player a JOIN player_stats b ON a.name=b.name JOIN play_for c ON b.name=c.name WHERE a.position='{name}'")
    if result > 0:
        positionInfo_details = cursor.fetchall()

    cursor.close()
    return render_template("positionInfo.html", positionInfo_details = positionInfo_details)

@app.route('/franchise/<name>', methods=['GET', 'POST'])
def franchise_info(name):
    print(name)
    cursor = mysql.connection.cursor()


    result = cursor.execute(f"SELECT * FROM team NATURAL JOIN team_stats NATURAL JOIN game_stats NATURAL JOIN play_for WHERE a.position='{name}'")
    if result > 0:
        franchiseInfo_details = cursor.fetchall()

    cursor.close()
    return render_template("franchiseInfo.html", franchiseInfo_details = franchiseInfo_details)






if __name__ == "__main__":
    app.run(debug = True)

