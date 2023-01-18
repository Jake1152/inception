# 사용자 전환
# su - // - 현재 경로를 포함한다.

# sudo 설치 루틴
apt-get update
apt-get install -y sudo

# 패키지 관리자가 https를 이용할 수 있도록 설정한다.
sudo apt-get install -y apt-transport-https

# SSL 통신이 가능하도록 CA(Certificate Authorities)로부터 인증서를 얻는다.
sudo apt-get install -y ca-certificates

# c-url, wget은 get만 있지만 url은 더 여러가지를 할수있다. wget보다 안전한것으로 알고 있다
sudo apt-get install -y curl make

# Repository를 추가 및 삭제할 수 있도록 설정하는 패키지 설치
sudo apt-get install -y software-properties-common

# firefox는 default가 https이므로 http로 접근할 수 있는 chrome이 필요하다.
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
