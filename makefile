.PHONY: examples
examples:
# HelloWorld 
	clang -DLIBUS_USE_LIBUV -DLIBUS_USE_OPENSSL -flto -O3 -c -IuSockets/src uSockets/src/*.c uSockets/src/eventing/*.c
	clang++ -flto -O3 -c -std=c++17 -Isrc -IuSockets/src examples/HelloWorld.cpp
	clang++ -L/usr/local/lib -luv -lssl -lcrypto -lz -flto -L/usr/local/Cellar//openssl@1.1/1.1.1c/lib/ -I/usr/local/Cellar//openssl@1.1/1.1.1c/ -O3 -s *.o -o  HelloWorld
	rm *.o

# HelloWorldThreaded 
	clang -DLIBUS_USE_LIBUV -DLIBUS_USE_OPENSSL -flto -O3 -c -IuSockets/src uSockets/src/*.c uSockets/src/eventing/*.c
	clang++ -flto -O3 -c -std=c++17 -Isrc -IuSockets/src examples/HelloWorldThreaded.cpp
	clang++ -L/usr/local/lib -luv -lssl -lcrypto -lz -lpthread -flto -L/usr/local/Cellar//openssl@1.1/1.1.1b/lib/ -I/usr/local/Cellar//openssl@1.1/1.1.1b/ -O3 -s *.o -o HelloWorldThreaded
	rm *.o

# EchoServer 
	clang -DLIBUS_USE_LIBUV -DLIBUS_USE_OPENSSL -flto -O3 -c -IuSockets/src uSockets/src/*.c uSockets/src/eventing/*.c
	clang++ -flto -O3 -c -std=c++17 -Isrc -IuSockets/src examples/EchoServer.cpp
	clang++ -L/usr/local/lib -luv -lssl -lcrypto -lz -flto -L/usr/local/Cellar//openssl@1.1/1.1.1b/lib/ -I/usr/local/Cellar//openssl@1.1/1.1.1b/ -O3 -s *.o -o EchoServer
	rm *.o

# EchoServerThreaded 
	clang -DLIBUS_USE_LIBUV -DLIBUS_USE_OPENSSL -flto -O3 -c -IuSockets/src uSockets/src/*.c uSockets/src/eventing/*.c
	clang++ -flto -O3 -c -std=c++17 -Isrc -IuSockets/src examples/EchoServerThreaded.cpp
	clang++ -L/usr/local/lib -luv -lssl -lcrypto -lz -lpthread -L/usr/local/Cellar//openssl@1.1/1.1.1b/lib/ -I/usr/local/Cellar//openssl@1.1/1.1.1b/ -flto -O3 -s *.o -o EchoServerThreaded
	rm *.o

