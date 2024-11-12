FROM nginx
LABEL MAINTAINER "Piraboon Piyawarapong"
ENV MY_HOST localhost
COPY dotask.sh /
RUN apt-get update && apt-get install -y git sed
RUN mkdir /mycode && cd /mycode && git clone https://github.com/twtrp/DES424_6422781466
RUN cp -r /mycode/DES424_6422781466/src /usr/share/nginx/html/mygitweb
CMD ["sh","/dotask.sh"]