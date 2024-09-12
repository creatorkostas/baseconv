EXE = baseconv

all: download_pkgs tui cli

download_pkgs:
	go mod download

tui:
	go build ./cmd/$(EXE)

cli:
	go build ./cmd/$(EXE)-cli

clean:
	rm $(EXE)
	rm $(EXE)-cli

install: all
	sudo mv ./$(EXE) /usr/bin/$(EXE)
	sudo mv ./$(EXE)-cli /usr/bin/$(EXE)-cli

uninstall: all
	sudo rm ./$(EXE) /usr/bin/$(EXE)
	sudo rm ./$(EXE)-cli /usr/bin/$(EXE)-cli

.PHONY: all download_pkgs tui cli clean install uninstall
