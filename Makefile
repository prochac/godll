LIB_NAME=golib
GO_FILE=main.go
C_FILE=main.c
DLL_FILE=golib.dll

.PHONY: clean
clean:
	-rm $(LIB_NAME).a
	-rm $(LIB_NAME).h

.PHONY: all
all:
	go build -buildmode=c-archive -o $(LIB_NAME).a $(GO_FILE)
	gcc -shared -pthread -o $(DLL_FILE) $(C_FILE) $(LIB_NAME).a -lWinMM -lntdll -lWS2_32
