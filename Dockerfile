FROM java:7
MAINTAINER steve074@umn.edu
ENTRYPOINT ["java","-cp", "bin", "HelloWorld"]
WORKDIR /helloworld
RUN mkdir bin
COPY HelloWorld.java /helloworld/src/
RUN javac -d bin src/HelloWorld.java
ENV FOO bar
ENV CONNECTION ${SSH_CONNECTION}
