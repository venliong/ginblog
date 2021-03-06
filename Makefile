#Basic makefile

default: build

build: vet
	@go generate && go build && rm ./*.rice-box.go

doc:
	@godoc -http=:6060 -index

lint:
	@golint ./...

debug:
	@reflex -c reflex.conf

run: build
	./ginblog

test:
	@go test ./...

vet:
	@go vet ./...

clean:
	rm ./ginblog
