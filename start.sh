if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hdhshsjsjsj/LET-ME.git /LET-ME
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LET-ME
fi
cd /LET-ME
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
