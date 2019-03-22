import socket
from flask import Flask


app = Flask(__name__)


@app.route("/")
def home():
    return "Evza jede!"


if __name__ == "__main__":

    # resolving machine IP address for correct web publishing
    hostname = socket.gethostname()
    ip_here = socket.gethostbyname(hostname)

    app.run(debug=True, host=ip_here)
