init:
	ln -fs `pwd`/gitconfig   ~/.gitconfig
	ln -fs `pwd`/tigrc   ~/.tigrc
	ln -fs `pwd`/vimrc   ~/.vimrc
	ln -fs `pwd`/easystroke   ~/.easystroke
	ln -fs `pwd`/zshrc   ~/.zshrc

	cd /home/share-config/.config/
	make ln

	ln -fsn `pwd`/Sublime-User   ~/.config/sublime-text-3/Packages/User

sync:
	git pull
	git push

ln:
	ln -fsn /home/share-config/.config/.mozilla  ~/.mozilla
	ln -fsn /home/share-config/.config/.ssh      ~/.ssh
	ln -fsn /home/share-config/.config/Code      ~/.config/Code
	ln -fsn /home/share-config/.config/gpick      ~/.config/gpick
	ln -fsn /home/share-config/.config/htop      ~/.config/htop
	ln -fsn /home/share-config/.config/inkscape  ~/.config/inkscape
	ln -fsn /home/share-config/.config/smplayer  ~/.config/smplayer
	ln -fsn /home/share-config/.config/smtube    ~/.config/smtube
	ln -fsn /home/share-config/.config/vivaldi   ~/.config/vivaldi
	ln -fsn /home/share-config/.config/vlc       ~/.config/vlc
	ln -fsn /home/share-config/.config/gpicview  ~/.config/gpicview
	ln -fsn /home/share-config/.config/sublime-text-3 ~/.config/sublime-text-3
	ln -fsn /home/share-config/.config/google-chrome ~/.config/google-chrome
	ln -fsn /home/share-config/.config/google-chrome-unstable ~/.config/google-chrome-unstable
