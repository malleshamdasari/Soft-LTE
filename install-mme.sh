sudo apt-get update
sudo apt-get install cmake libfftw3-dev libmbedtls-dev libboost-program-options-dev libconfig++-dev libsctp-dev
if [ -d srsLTE ]; then
  rmdir srsLTE
fi
git clone https://github.com/mdasari823/eNodeB-Emulator.git
cd eNodeB-Emulator/vnfs
mkdir build
cd build
cmake ../
make
make test
sudo make install
cd ../srsepc/
cp epc.conf.example epc.conf
cp user_db.csv.example user_db.csv
sudo srsepc ./epc.conf
