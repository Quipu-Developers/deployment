if [ "$(id -u)" != "0" ]; then
   echo "이 스크립트는 root 권한으로 실행해야 합니다." 1>&2
   exit 1
fi

echo "apt를 설정합니다."
apt update
apt upgrade

echo "apt-get을 설정합니다."
apt-get update
apt-get upgrade

echo "git을 설치합니다."
apt install git

echo "docker를 설치합니다."
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
