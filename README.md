# ko.subject
[42seoul-translation/subject_ko/ft_server](https://github.com/42seoul-translation/subject_ko/pull/13/commits/aa01a2795453eea170e15fa9bb44d6e91fc4d842#diff-9227e4448d114339cc06feadc443c20d682bc720dde83b232edd33eeb942dbda)

# docker 실행
git clone https://github.com/alexandregv/42toolbox  
cd 42toolbox  
./init_docker.sh  

# docker 빌드 (image)
docker build -t ft_server .  
docker build -t [이미지이름] [경로]  

# dockerfile 실행 (container)
docker run -it -p80:80 -p443:443 ft_server  
-i : interactive  
-t : terminal  
-it : 터미널 환경을 열어서 입력할 수 있게 하는 옵션  
-p [내부포트]:[외부포트] : 포트설정 / 80:80 http 포트 / 443:443 https 포트  

# 기타 명령어 참고
https://blog.naver.com/minhyupp/222245079411  
