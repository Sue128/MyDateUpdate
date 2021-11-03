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
<<<<<<< HEAD
#RUN echo `pwd`
CMD /MyDateUpdate/push.sh ; sleep infinity
=======
RUN echo `pwd`
#CMD ["/MyDateUpdate/push.sh"]
>>>>>>> dd298077b18d7b6674eb19bdd9fdf5b709302508


