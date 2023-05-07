from flask import Flask, request

app = Flask ( __name__ )

@app.route("/")
def hello():
  return "Hello Microservice_1 World"

@app.route("/addition/<int:x>/<int:y>")
def add(x, y):
  return "%d" % (x+y)

@app.route("/subtraction/<int:x>/<int:y>")
def subtract(x, y):
  return "%d" % (x-y)

if __name__ == "__main__":
  app.run(host='0.0.0.0')