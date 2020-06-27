
host_url=$1
cd /op/blockchain/mypythonblockchain/
python -m pip install -r requirements.txt
export FLASK_APP=node_server.py
python -m flask run --host 0.0.0.0 --port 8000 &


export FLASK_APP=run_simulator.py
export BACKEND_API="http://127.0.0.1:8000"
python -m flask run --host 0.0.0.0 --port 5000 &

sleep 3
url="http://localhost:5000/run_simulator"            
curl -X POST $url -d '{"host_url": "http://127.0.0.1:8000" }' -H 'Content-Type: application/json'
