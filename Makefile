hello:
	echo "Hello"

compile:
	go build main.go

run:
	docker build -t caddy:1 . && docker run -d -p 8080:2015 caddy:1 

build:
	echo "Compiling for every OS and Platform"
	GOOS=linux GOHOSTOS=linux GOARCH=amd64 go build main.go
	git add .
	git commit -m "Caddy Server"
	git push origin master
all: hello build
