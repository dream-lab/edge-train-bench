#install torch and torchvision
wget --no-check-certificate https://nvidia.box.com/shared/static/p57jwntv436lfrd78inwl7iml6p13fzh.whl -O torch-1.8.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev 
pip3 install Cython
pip3 install numpy torch-1.8.0-cp36-cp36m-linux_aarch64.whl

sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch v0.9.0 https://github.com/pytorch/vision torchvision   # see below for version of torchvision to download
cd torchvision
export BUILD_VERSION=0.9.0  # where 0.x.0 is the torchvision version  
python3 setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error

#jtop
sudo -H pip3 install -U jetson-stats

#sysstat for iostat
sudo apt-get install sysstat

#vmtouch
sudo apt-get install vmtouch

#pandas
sudo apt-get install pandas
