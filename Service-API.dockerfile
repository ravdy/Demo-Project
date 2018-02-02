FROM java:8
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

VOLUME /tmp

 ARG arg
 
ADD /$arg $arg 


ENTRYPOINT ["java","-jar", $arg]



