sudo yum install git
git clone https://github.com/Nathnos/foundryy-learn-faces
mkdir ~/foundryy-learn-faces/selfies
mkdir ~/foundryy-learn-faces/cropped_selfies
cd ~/foundryy-learn-faces/selfies
unzip selfies.zip

cd ..
pip3 install -r requirements.txt
pip3 install git+https://github.com/huggingface/diffusers
accelerate config
python -c "from accelerate.utils import write_basic_config; write_basic_config(mixed_precision='fp16')"

python3 preprocess.py
chmod +x train.bat
./train.bat
