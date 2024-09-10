EXE = baseconv

all: tui cli

tui:
	go build ./cmd/$(EXE)

cli:
	go build ./cmd/$(EXE)-cli

clean:
	rm $(EXE)
	rm $(EXE)-cli

install:
	sudo mv ./$(EXE) /usr/bin/$(EXE)
	sudo mv ./$(EXE)-cli /usr/bin/$(EXE)-cli

uninstall:
	sudo rm ./$(EXE) /usr/bin/$(EXE)
	sudo rm ./$(EXE)-cli /usr/bin/$(EXE)-cli

.PHONY: all tui cli clean
