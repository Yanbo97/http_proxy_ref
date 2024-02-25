FROM ubuntu

RUN apt-get update 
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y g++ make
RUN mkdir /var/log/erss
RUN touch /var/log/erss/proxy.log
RUN mkdir /code
ADD . /code 
WORKDIR /code
RUN ["chmod", "+x", "run.sh"] 