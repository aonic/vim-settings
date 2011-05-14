
all: bundles config plugins

bundles: .gitmodules
	git submodule init
	git submodule update
	git submodule foreach git submodule init
	git submodule foreach git submodule update


plugins: .vim
	ln -s ${CURDIR}/.vim ~/

config: .vimrc
	ln -s ${CURDIR}/.vimrc ~/

clean:
	rm -rf ~/.vimrc ~/.vim
