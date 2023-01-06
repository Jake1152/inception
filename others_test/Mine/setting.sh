# 사용자 전환
# su -

# Repository
apt-get update

apt-get install -y sudo

# 패키지 관리자가 https를 이용할 수 있돟록 설정
sudo apt-get install -y apt-transport-https

sudo apt-get install -y ca-certificates

sudo apt-get install -y curl make

sudo apt-get install -y software-properties-common

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y