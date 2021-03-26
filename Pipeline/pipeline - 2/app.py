from flask import Flask, request, render_template
import socket

app = Flask(__name__)

@app.route('/hello')
def hello():
    return 'hello world!'