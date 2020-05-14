FROM golang:1.8-alpine
ADD . /go/src/Ginnie-app
RUN go install Ginnie-app

FROM alpine:latest
COPY --from=0 /go/bin/Ginnie-app .
ENV PORT 8080
CMD ["./ginnie-app"]
