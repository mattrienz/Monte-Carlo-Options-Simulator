.PHONY: build run clean

build:
	cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
	cmake --build build

run: build
	./build/OptionsPrices

clean:
	rm -rf build
