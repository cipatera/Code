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

@app.route('/teamStats')
def team_stats():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM team_stats")
    if result > 0:
        team_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("teamStats.html", team_stats_details=team_stats_details)

@app.route('/gameStats')
def game_stats():
    cursor = mysql.connection.cursor()

    result = cursor.execute("SELECT * FROM game_stats")
    if result > 0:
        game_stats_details = cursor.fetchall()

    cursor.close()
    return render_template("gameStats.html", game_stats_details=game_stats_details)

# @app.route('/<player_name>') #localhost:5000/tom-brady
# def player_profile(player_name):
#     player_name.split('-') # ['tom', 'brady']
#     local_player_name = player_name[0] + ' ' + player_name[1] # tom brady
#     print(local_player_name)
#     cursor = mysql.connection.cursor()

#     #sql_query = "SELECT %s FROM player CROSS JOIN play_for CROSS JOIN player_stats"
#     player_information_query = cursor.execute( "SELECT %s FROM player CROSS JOIN play_for CROSS JOIN player_stats" % local_player_name)
#     #player_stats = cursor.execute("SELECT {player_name} FROM  player_stats")
#     if player_information_query > 0:
#         player_information = cursor.fetchall()

#     cursor.close()
#     return render_template("test.html", player_information)

if __name__ == "__main__":
    app.run(debug = True)

