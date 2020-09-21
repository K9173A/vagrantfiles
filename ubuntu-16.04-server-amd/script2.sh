apt-get update --fix-missing
apt-get install -y wget

wget https://packages.erlang-solutions.com/erlang/debian/pool/mongooseim_2.1.1-1~ubuntu~xenial_amd64.deb
dpkg -i mongooseim_2.1.1-1~ubuntu~xenial_amd64.deb
