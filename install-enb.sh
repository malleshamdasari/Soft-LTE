sudo apt-get update
sudo apt-get install cmake libfftw3-dev libmbedtls-dev libboost-program-options-dev libconfig++-dev libsctp-dev
sudo apt-get install libuhd-dev libuhd003 uhd-host
sudo add-apt-repository ppa:bladerf/bladerf
sudo apt-get update
sudo apt-get install bladerf
sudo apt-get install libbladerf-dev
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
cd ..
cp srsenb/enb.conf.example srsenb/enb.conf
cp srsenb/rr.conf.example srsenb/rr.conf
cp srsenb/sib.conf.example srsenb/sib.conf
cp srsenb/drb.conf.example srsenb/drb.conf
cd srsenb
sudo srsenb enb.conf
