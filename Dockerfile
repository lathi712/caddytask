FROM ubuntu:latest
COPY ./main main
COPY ./index.html index.html   
CMD ["/bin/bash", "-c", "./main"]
