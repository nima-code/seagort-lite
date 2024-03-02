echo $GOOS $GOARCH && go build -o ../../bridge/mac_arm/libseagort.so -buildmode=c-shared main.go

mkdir -p ../../bridge/mac_intel/
mkdir -p ../../bridge/linux/
mkdir -p ../../bridge/windows/

GOOS=linux 
GOARCH=amd64 
echo $GOOS $GOARCH && go build -o ../../bridge/linux/libseagort.so -buildmode=c-shared main.go

GOOS=darwin 
GOARCH=amd64 
echo $GOOS $GOARCH && go build -o ../../bridge/mac_intel/libseagort.dylib -buildmode=c-shared main.go

GOOS=windows 
GOARCH=amd64 
echo $GOOS $GOARCH && go build -o ../../bridge/windows/libseagort.dll -buildmode=c-shared main.go

GOOS=darwin
GOARCH=arm64