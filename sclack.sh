# NGrok
mkdir -p ~/bin
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvf ngrok-v3-stable-linux-amd64.tgz
rm ngrok-v3-stable-linux-amd64.tgz
mv ngrok ~/bin/
ngrok config add-authtoken $NGROK_TOKEN

# Get secret
curl -s "https://slack.com/api/oauth.access?client_id=$SLACK_CLIENT&client_secret=$SLACK_SECRET&code=$SLACK_CODE"

apt install caca-utils

cd sclack
export PIPENV_VENV_IN_PROJECT=1
pipenv install # install deps
pipenv shell # enter virtualenv
python app.py # run app