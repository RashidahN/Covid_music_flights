from application import app
from flask import render_template, url_for
import pandas as pd
import json
import plotly
import plotly.express as px


#Create app routes
@app.route("/")
def home():
    return render_template("homepage.html")

@app.route("/charts-data")
def data():
    return render_template("data-charts.html")


@app.route("/about")
def about():
    return render_template("about.html")





if __name__== "__main__":
    app.run(debug=True)