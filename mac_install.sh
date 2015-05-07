#/bin/bash
sudo echo "Installing PyXAPI"
cd /tmp
curl -O http://www.pps.univ-paris-diderot.fr/~ylg/PyXAPI/PyXAPI-0.1.tar.gz
tar -xzvf PyXAPI-0.1.tar.gz
cd PyXAPI-0.1
./configure
make
sudo make install
cd ..

echo "Installing autossh"
brew update
brew install autossh

echo "Getting sshuttle"
git clone https://github.com/rombob/sshuttle.git /opt/sshuttle
cd /opt/sshuttle/src/
echo "alias sshuttle=$(pwd)/sshuttle" >> $HOME/.bash_profile
source $HOME/.bash_profile
