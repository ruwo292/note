FROM alpine:latest
ADD . /Note/
WORKDIR /Note/
RUN chmod +rwx /Note/
ENV DirNumber 0
ENV PORT 8443
EXPOSE $PORT
ENTRYPOINT ["./Note/note.exe","-P","$DirNumber"]
