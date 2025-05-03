FROM alpine:latest

RUN apk add --no-cache git go build-base

RUN git clone https://github.com/9seconds/mtg.git /app

WORKDIR /app

RUN go build

CMD ["./mtg", "run", "--secret=ddc7d4aabb112233445566778899aabb", "--public-ip=RENDER_EXTERNAL_HOSTNAME", "--tag=@IKPROXY"]
