# CMake generated Testfile for 
# Source directory: /home/mdasari/Lte-setup-bell/vnfs/srsue/test
# Build directory: /home/mdasari/Lte-setup-bell/vnfs/build/srsue/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(metrics_test "metrics_test" "-o" "/home/mdasari/Lte-setup-bell/vnfs/build/srsue/test/ue_metrics.csv")
subdirs(phy)
subdirs(mac)
subdirs(upper)
