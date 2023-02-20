FROM jenkins/jenkins
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y git maven docker.io
USER jenkins # drop back to the regular jenkins user - good practice
CMD ["sh","systemctl","start" ,"docker"]
