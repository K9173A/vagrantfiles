apt-get update --fix-missing

# Erlang
apt-get install -y git wget build-essential libwxbase3.0-0v5 libwxgtk3.0-0v5 libsctp1 zlib1g-dev libssl-dev unixodbc-dev
apt-get install -y libexpat-dev # Needs only for Xenial
wget https://packages.erlang-solutions.com/erlang/debian/pool/esl-erlang_20.3.8.26-1~ubuntu~xenial_amd64.deb
dpkg -i esl-erlang_20.3.8.26-1~ubuntu~xenial_amd64.deb

# MongooseIM
git clone https://github.com/esl/MongooseIM.git
cd MongooseIM/
git checkout tags/2.1.1

make rel
