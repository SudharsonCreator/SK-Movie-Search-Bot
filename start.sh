if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sk-movie-search-bot.git /sk-movie-search-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /sk-movie-search-bot
fi
cd /sk-movie-search-bot
pip3 install -U -r requirements.txt
echo "Starting sk-movie-search-bot...."
python3 bot.py
