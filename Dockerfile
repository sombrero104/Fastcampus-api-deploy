FROM centos:latest

RUN curl --silent —location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum install -y nginx
# RUN yum install -y nodejs

WORKDIR /usr/share/nginx/html

RUN yum install -y git
RUN git clone -b v1 https://github.com/sombrero104/Fastcampus-api-deploy.git

RUN cd ./Fastcampus-api-deploy

RUN yum install -y nodejs
RUN npm install


EXPOSE 8080

CMD ["node", "bin/www"]

