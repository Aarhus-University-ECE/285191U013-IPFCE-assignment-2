.PHONY: all configure build exercises exercise-2 exercise-3 exercise-4 exercise-5 exercise-7

all: exercises playground

.PHONY: clean
clean:
	rm -rf ./build

configure:
	cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug

build: configure
	cmake --build build --target all --parallel=$(shell nproc)

exercise-2: build
	@echo "---------- EXERCISE 2 ----------"
	@./build/exercise-2

exercise-3: build
	@echo "---------- EXERCISE 3 ----------"
	@./build/exercise-3

exercise-4: build
	@echo "---------- EXERCISE 4 ----------"
	@./build/exercise-4

exercise-5: build
	@echo "---------- EXERCISE 5 ----------"
	@./build/exercise-5

exercise-7: build
	@echo "---------- EXERCISE 7 ----------"
	@./build/exercise-7

exercises: exercise-2 exercise-3 exercise-4 exercise-5 exercise-7

./build/playground: build

playground: ./build/playground
	@echo "---------- PLAYGROUND ----------"
	@./build/playground
