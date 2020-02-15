# ivms4200 linux on Kyle Anderson's  solarkennedy/wine-x11-novnc-docker
# Thanks to  Kyle Anderson and Nicolas SAPA  !
# ivms4200 linux  from https://upload.bkeesti.ee/Hikvision/Software/ 
# Or http://www.hikvision.msk.ru/index/download/0-14
FROM  solarkennedy/wine-x11-novnc-docker 
MAINTAINER B.K.Jayasundera
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
RUN apt update 
RUN apt install -y xfce4-terminal \
    && apt install -y tzdata \
    && apt install -y vim \
    && apt -y autoremove
COPY ivms /ivms
RUN chmod 777 /ivms/iVMS-4200
COPY bash.bashrc /etc/bash.bashrc
COPY ivmswine.sh /usr/bin/ivmswine.sh
RUN chmod 777 /usr/bin/ivmswine.sh
RUN unlink /etc/localtime
EXPOSE 8080
CMD ["/usr/bin/supervisord"]


