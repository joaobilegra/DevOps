from flask import Flask, render_template
app= Flask(__name__) 
class Jogo:
    def __init__(self,nome, categoria, console):
        self.nome = nome
        self.categoria = categoria
        self.console = console
   
   
   
   
jogo1 = Jogo('Super Mario', 'Acao', 'SNES')
jogo2 = Jogo('Pokemon Gold', 'RPG', 'GBA')
jogo3 = Jogo('Mortal Kombat', 'Luta', 'SNES')
lista = [jogo1, jogo2, jogo3]


@app.route('/inicio')
def ola():
    return render_template('lista.html', titulo='Jogos',
                           jogos=lista)

app.run()