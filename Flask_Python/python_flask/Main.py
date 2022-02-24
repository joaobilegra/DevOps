from flask import Flask, render_template
import servico
app= Flask(__name__)
@app.route('/')
def home():
    return render_template('home.html')
 

@app.route('/config/env')
def env_list():
   return servico.env_list()

@app.route("/env/<variable>/<content>")
def create_env_var(variable, content):
 return servico.create_var_linux(variable,content)


@app.route("/list/running_software")
def list_running_software():
    return servico.list_running_software()



app.run(host='localhost',port=8080)

