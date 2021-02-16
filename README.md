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
docker image 삭제 : docker rmi ([image_name] or [image_id])  

# dockerfile 실행 (container)
docker run -it --name tapark -p80:80 -p443:443 ft_server  
-i : interactive  
-t : terminal  
-it : 터미널 환경을 열어서 입력할 수 있게 하는 옵션  
--name [container_name]: container 이름 설정  
-p [내부포트]:[외부포트] : 포트설정 / 80:80 http port / 443:443 https port  
  
docker container 목록(실행중) : docker ps  
docker container 목록(전체) : docker ps -a  
docker container 삭제 : docker rm -f ([container_name] or [container_id])  
  
* image가 포함된 container 삭제 후 image 삭제 가능  

# 기타 명령어 참고
https://yeosong1.github.io/%EB%8F%84%EC%BB%A4-%EB%AA%85%EB%A0%B9%EC%96%B4-%EB%AA%A8%EC%9D%8C
