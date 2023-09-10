# Description: Download data from Stanfor Alpaca, https://github.com/tatsu-lab/stanford_alpaca/tree/main

if [ ! -d "data" ]; then
    mkdir data
    echo "created ./data"
fi

cd data
wget https://github.com/tatsu-lab/stanford_alpaca/blob/main/prompt.txt
wget https://github.com/tatsu-lab/stanford_alpaca/blob/main/alpaca_data.json