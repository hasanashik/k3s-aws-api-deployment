from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/hello', methods=['GET'])
def hello_world():
    return "Hello, World!"

@app.route('/data', methods=['POST'])
def receive_data():
    data = request.get_json()
    return jsonify(data), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
