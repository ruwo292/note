FROM alpine:latest
ADD . /Note/
WORKDIR /Note/
RUN chmod +x /Note/
ENV DirNumber 0
ENV PORT 8443
EXPOSE $PORT
ENTRYPOINT /Note/abc.sh
