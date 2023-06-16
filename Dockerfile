FROM golang:alpine AS build-stage

WORKDIR /usr/src/app

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags '-w -s' -a -installsuffix cgo -o /usr/local/bin/app \
    && apk add --no-cache upx \
    && upx --brute /usr/local/bin/app



FROM scratch
COPY --from=build-stage /usr/local/bin/app /usr/local/bin/
ENTRYPOINT ["app"]