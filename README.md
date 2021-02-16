# ft_server

# docker 실행
git clone https://github.com/alexandregv/42toolbox  
cd 42toolbox  
./init_docker.sh  

# docker image 빌드(생성)
docker build -t ft_server .
docker build -t [이미지이름] [경로]  

# dockerfile 실행
docker run -it -p80:80 -p443:443 ft_server  
