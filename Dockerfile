FROM alpine:latest
ADD . /Note/
WORKDIR /Note/
RUN chmod +x
ENV DirNumber 0
ENV PORT 8443
EXPOSE $PORT
CMD note -P $DirNumber
