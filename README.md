# deployment

quipu의 배포를 관리하는 레포지토리입니다.

## environment

### init

```bash
# deployment 관련 파일이 위치한 레포지토리를 클론합니다.
$ git clone https://github.com/Quipu-Developers/deployment.git
```

```bash
# init.sh 파일 실행
$ sudo ./deployment/init.sh
```

### deployment setting

```bash
# docker 환경에서 jenkins 실행
$ ./deployment/jenkins.sh
```

## nodes

### mars

- 위치 : 서울시립대로 163 학생회관 342호
- 운영체제 : Raspberry Pi OS 64bit

### venus

- 위치 : 서울시립대로 163 학생회관 342호
- 운영체제 : Raspberry Pi OS 64bit
