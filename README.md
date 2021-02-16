# ko.subject
[42seoul-translation/subject_ko/ft_server](https://github.com/42seoul-translation/subject_ko/pull/13/commits/aa01a2795453eea170e15fa9bb44d6e91fc4d842#diff-9227e4448d114339cc06feadc443c20d682bc720dde83b232edd33eeb942dbda)

# docker 실행
git clone https://github.com/alexandregv/42toolbox  
cd 42toolbox  
./init_docker.sh  

# docker 빌드 (image)
docker build -t ft_server .  
docker build -t [image_name] [path]    
  
docker image 목록 : docker images  
docker image 삭제 : docker rmi [image_name]  

# dockerfile 실행 (container)
docker run -it --name tapark -p80:80 -p443:443 ft_server  
-i : interactive  
-t : terminal  
--name [container_name]: container 이름 설정
-it : 터미널 환경을 열어서 입력할 수 있게 하는 옵션  
-p [내부포트]:[외부포트] : 포트설정 / 80:80 http port / 443:443 https port  
  
docker container 목록(실행중) : docker ps  
docker container 목록(전체) : docker ps -a  
docker container 삭제 : docker rm -f [container_name]  

# 기타 명령어 참고
https://blog.naver.com/minhyupp/222245079411  
