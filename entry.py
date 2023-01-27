from flask import Flask, render_template
import json

app = Flask(__name__)

@app.route("/")
def render():
    return render_template("root.html")

@app.route("/hello/<name>")
def hello(name):
    # you'd probably want this 
    return "hi!" + name

if __name__ == "__main__":
   app.run(host="0.0.0.0", port=5000)
