FROM golang:alpine as kunote
ADD . /go/src/github.com/ruwo292/Note/
RUN go install github.com/ruwo292/Note/set
FROM alpine:latest
ENV NUMBER 150
ENV NAME rose
ENV TAB study
ENV CONTENT sport
ENV PORT 8086
WORKDIR /bin/
COPY --from=kunote /go/bin/set .
ENTRYPOINT ["/bin/set"]
EXPOSE $PORT
