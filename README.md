
# Packer 를 사용한 AMI 이미지 생성
## 개요
- 빠르게 가상 머신을 생성하기 위해서는 미리 구성된 OS 와 필요한 소프트웨어가 설치된 이미지가 필요합니다.  
이를 손쉽게 생성하기 위한 방법으로 Pakcer를 사용하여 AMI 를 생성합니다.  
또한 Packer를 통해 이미지의 기본 정보를 구성한 후, Ansible, InSpec, Shell 등 다양한 [Provisioner](https://packer.io/docs/provisioners/index.html) 을 연계하여 추가적인 구성을 할 수도 있습니다.


## 구성
```bash
packer
│   README.md
│
└───example01
│   │   packer.json                     # paker 구성 파일
│   │
│   └───playbook                        # nginx 설치 및 구성을 위한 ansible playbook
│       │   nginx.yml                   
│       └───nginx-conf
|           └───nginx-sample.conf       # nginx와 tomcat을 연동하기 위한 샘플 구성 파일
│   
└───example02
│   │   packer.json                     # paker 구성 파일
│   │
│   └───playbook                        
│       │   nginx-tomcat8.5.yml         # nginx, tomcat 설치 등을 위한 ansible playbook
│       └───nginx-conf
|           └───nginx-sample.conf       # nginx와 tomcat을 연동하기 위한 샘플 구성 파일
│   
└───example03   
    │   packer.json                     # paker 구성 파일
    │
    └───sh                              
        │   ruby-terraform.sh           # ruby, terraform 등을 설치하기 위한 예제 파일
```


## Usage
다음 명령어를 사용하여 예제를 실행해 보실 수 있습니다.

```bash
$ cd exampleXX
$ packer build packer.json
```


## 참고 자료
- Packer website: https://packer.io/
- Packer download: https://packer.io/downloads.html