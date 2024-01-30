if [ "$(id -u)" != "0" ]; then
   echo "이 스크립트는 root 권한으로 실행해야 합니다." 1>&2
   exit 1
fi

echo "apt-get을 설정합니다."
apt-get update
apt-get upgrade

echo "git을 설치합니다."
apt install git

echo "docker를 설치합니다."
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

echo "부팅 시 docker를 자동으로 활용하도록 설정"
systemctl enable docker

# 라즈베리파이 OS에서는 pip3를 기본적으로 제공한다.
echo "docker-compose 설치"
pip3 install docker-compose
