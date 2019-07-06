# All
all: client server

# Client build commands
client-linux-i386: cmd/engarde-client/
	GOOS=linux GOARCH=386 go build -o dist/linux/i386/engarde-client cmd/engarde-client/
client-linux-amd64: cmd/engarde-client/
	GOOS=linux GOARCH=amd64 go build -o dist/linux/amd64/engarde-client cmd/engarde-client/
client-linux-arm:
	GOOS=linux GOARCH=arm go build -o dist/linux/arm/engarde-client cmd/engarde-client/
client-windows-i386: cmd/engarde-client/
	GOOS=windows GOARCH=386 go build -o dist/windows/i386/engarde-client.exe cmd/engarde-client/
client-windows-amd64: cmd/engarde-client/
	GOOS=windows GOARCH=amd64 go build -o dist/windows/amd64/engarde-client.exe cmd/engarde-client/
client-darwin-i386: cmd/engarde-client/
	GOOS=darwin GOARCH=386 go build -o dist/darwin/i386/engarde-client cmd/engarde-client/
client-darwin-amd64: cmd/engarde-client/
	GOOS=darwin GOARCH=amd64 go build -o dist/darwin/amd64/engarde-client cmd/engarde-client/

# Server build commands
server-linux-i386: cmd/engarde-server/
	GOOS=linux GOARCH=386 go build -o dist/linux/i386/engarde-server cmd/engarde-server/
server-linux-amd64: cmd/engarde-server/
	GOOS=linux GOARCH=amd64 go build -o dist/linux/amd64/engarde-server cmd/engarde-server/
server-linux-arm: cmd/engarde-server/
	GOOS=linux GOARCH=arm go build -o dist/linux/arm/engarde-server cmd/engarde-server/
server-windows-i386: cmd/engarde-server/
	GOOS=windows GOARCH=386 go build -o dist/windows/i386/engarde-server.exe cmd/engarde-server/
server-windows-amd64: cmd/engarde-server/
	GOOS=windows GOARCH=amd64 go build -o dist/windows/amd64/engarde-server.exe cmd/engarde-server/
server-darwin-i386: cmd/engarde-server/
	GOOS=darwin GOARCH=386 go build -o dist/darwin/i386/engarde-server cmd/engarde-server/
server-darwin-amd64: cmd/engarde-server/
	GOOS=darwin GOARCH=amd64 go build -o dist/darwin/amd64/engarde-server cmd/engarde-server/

# Platform-specific builds
linux-i386: client-linux-i386 server-linux-i386
linux-amd64: client-linux-amd64 server-linux-amd64
linux-arm: client-linux-arm server-linux-arm
windows-i386: client-windows-i386 server-windows-i386
windows-amd64: client-windows-amd64 server-windows-amd64
darwin-i386: client-darwin-i386 server-darwin-i386
darwin-amd64: client-darwin-amd64 server-darwin-amd64
linux: linux-i386 linux-amd64 linux-arm
windows: windows-i386 windows-amd64
darwin: darwin-i386 darwin-amd64

# Type-specific builds
client-i386: client-linux-i386 client-windows-i386 client-darwin-i386
client-amd64: client-linux-amd64 client-windows-amd64 client-darwin-amd64
client-arm: client-linux-arm
server-i386: server-linux-i386 server-windows-i386 server-darwin-i386
server-amd64: server-linux-amd64 server-windows-amd64 server-darwin-amd64
server-arm: server-linux-arm
client: client-i386 client-amd64 client-arm
server: server-i386 server-amd64 server-arm
