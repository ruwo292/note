FROM alpine:latest
ADD . /Note/
WORKDIR /Note/
ENV DirNumber 1
ENV PORT 8443
EXPOSE $PORT
CMD note -P $DirNumber
