cd ~/
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
mkdir ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod 777 ~/bin/repo
mkdir -p ${HOME}/chromiumomos
sudo mkdir -p /usr/local/path/to/source/chromiumos
sudo ln -s /usr/local/path/to/source/chromiumos ${HOME}/chromiumos
export PATH=`pwd`/depot_tools:"$PATH"
cd ~/chromiumos
sudo ~/bin/repo init -u https://chromium.googlesource.com/chromiumos/manifest -g minilayout
sudo ~/bin/repo sync
export BOARD=amd64-generic
cros_sdk --exit
#cros_sdk -- ./build_packages --board=${BOARD}
#cros_sdk -- ./build_image --board=${BOARD}
