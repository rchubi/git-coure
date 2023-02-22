import os
import datetime
from flask import Flask


app = Flask(__name__)

BASE_FOLDER = os.path.dirname(os.path.abspath(__file__))


@app.route('/')
def hello_world():
    return "%s - %s" % ("Hello World", datetime.datetime.now().strftime("%d.%m.%Y %H:%M:%S"))

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080, debug=True)