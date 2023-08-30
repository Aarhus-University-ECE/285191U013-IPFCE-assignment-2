.PHONY: all configure build exercises exercise-3 exercise-4 exercise-5

all: exercises playground

configure:
	cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug

build: configure
	cmake --build build --target all --parallel=$(shell nproc)

exercise-3: build
	@echo "---------- EXERCISE 3 ----------"
	@./build/exercise-3

exercise-4: build
	@echo "---------- EXERCISE 4 ----------"
	@./build/exercise-4

exercise-5: build
	@echo "---------- EXERCISE 5 ----------"
	@./build/exercise-5

exercises: exercise-3 exercise-4 exercise-5

./build/playground: build

playground: ./build/playground
	@echo "---------- PLAYGROUND ----------"
	@./build/playground
