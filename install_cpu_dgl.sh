export https_proxy=http://child-prc.intel.com:913
export http_proxy=http://child-prc.intel.com:913

apt update
apt install -y python3 python3-pip
apt install -y python-is-python3
pip install torch ogb pyarrow torchmetrics vim
pip install dgl dglgo -f https://data.dgl.ai/wheels/repo.html