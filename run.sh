
host_url=$1
cd /op/blockchain/mypythonblockchain/
python3.6 -m pip install -r requirements.txt
export FLASK_APP=node_server.py
python3.6 -m flask run --host 0.0.0.0 --port 8000 &


export FLASK_APP=run_simulator.py
export BACKEND_API="http://37.114.85.81:8000"
python3.6 -m flask run --host 0.0.0.0 --port 5000 &

sleep 3
url="http://localhost:5000/run_simulator"            
curl -X POST $url -d '{"host_url": "http://37.114.85.81:8000" }' -H 'Content-Type: application/json'
