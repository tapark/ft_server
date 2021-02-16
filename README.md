# docker 실행
git clone https://github.com/alexandregv/42toolbox  
cd 42toolbox  
./init_docker.sh  

# docker image 빌드(생성)
docker build -t ft_server .  
docker build -t [이미지이름] [경로]  

# dockerfile 실행
docker run -it -p80:80 -p443:443 ft_server  
-i : interactive  
-t : terminal  
-it : 터미널 환경을 열어서 입력할 수 있게 하는 옵션  
-p [내부포트]:[외부포트] : 포트설정 / 80:80 http 포트 / 443:443 https 포트  
