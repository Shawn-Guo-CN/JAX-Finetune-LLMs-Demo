# Description: Download data from Stanfor Alpaca, https://github.com/tatsu-lab/stanford_alpaca/tree/main

if [ ! -d "data" ]; then
    mkdir data
    echo "created ./data"
fi

cd data
wget https://raw.githubusercontent.com/tatsu-lab/stanford_alpaca/main/prompt.txt
wget https://raw.githubusercontent.com/tatsu-lab/stanford_alpaca/main/alpaca_data.json