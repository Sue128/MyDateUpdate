FROM centos
MAINTAINER sue
#copy reposity to continer
RUN mkdir MyDateUpdate
COPY . ./MyDateUpdate
#Install git and openssh
RUN yum -y install vim
RUN yum -y install git
RUN yum -y install openssh-server

#Specified WorkDir
WORKDIR /MyDateUpdate
#Run Command
#RUN echo `pwd`
CMD /MyDateUpdate/push.sh ; sleep infinity


