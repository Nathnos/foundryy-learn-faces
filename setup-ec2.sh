git clone https://github.com/Nathnos/foundryy-learn-faces
mkdir ~/foundryy-learn-faces/selfies
mkdir ~/foundryy-learn-faces/cropped_selfies
cd ~/foundryy-learn-faces/selfies
unzip selfies.zip
rm selfies.zip

cd foundryy-learn-faces
pip3 install -r requirements.txt
pip3 install git+https://github.com/huggingface/diffusers

python3 preprocess.py
chmod +x train.sh
./train.sh
