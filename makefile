init:
	ln -fs `pwd`/gitconfig   ~/.gitconfig
	ln -fs `pwd`/tigrc   ~/.tigrc
	ln -fs `pwd`/vimrc   ~/.vimrc
	ln -fs `pwd`/easystroke   ~/.easystroke
	ln -fs `pwd`/gpicview   ~/.config/gpicview
	ln -fs `pwd`/Sublime-User   ~/.config/sublime-text-3/Packages/User
	# ln -fs `pwd`/zshrc   ~/.zshrc

sync:
	git pull
	git push
