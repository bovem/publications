# Installing ubuntu packages
apt-get update
apt-get upgrade -y
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get upgrade -y bash
apt-get clean

# Downloading and installing Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O \
Miniconda.sh
bash Miniconda.sh -b
rm -rf Miniconda.sh

# Adding anaconda to PATH variable
echo "export PATH=~/miniconda3/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

# Importing virtual enviroment 
conda env create -f python-aws.yml
source activate python-aws