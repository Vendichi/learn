#Задание low level по теме Docker

FROM redhat/ubi8:8.9

ENV TZ="Europe/Moscow"

RUN yum install rpm-build -y
