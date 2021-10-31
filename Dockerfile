FROM centos
MAINTAINER sue
#copy reposity to continer
RUN mkdir MyDateUpdate
COPY . ./MyDateUpdate
#Install git and openssh
RUN yum -y install git
RUN yum -y install openssh-server
