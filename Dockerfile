FROM alpine:latest
ADD . /Note/
WORKDIR /Note/
RUN chmod +x note.exe
ENV DirNumber 0
ENV PORT 8443
EXPOSE $PORT
ENTRYPOINT excc note.exe -P $DirNumber
