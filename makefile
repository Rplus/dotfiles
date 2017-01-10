init:
	ln -fs `pwd`/gitconfig   ~/.gitconfig
	ln -fs `pwd`/gitignore_global   ~/.gitignore_global
	ln -fs `pwd`/tigrc   ~/.tigrc
	ln -fs `pwd`/vimrc   ~/.vimrc
	ln -fs `pwd`/easystroke   ~/.easystroke
	ln -fs `pwd`/zshrc   ~/.zshrc

	cd /home/share-config/.config/
	make ln

	ln -fsn `pwd`/Sublime-User   ~/.config/sublime-text-3/Packages/User

	# xfce terminal config
	mkdir -p ~/.config/xfce4/terminal/
	ln -fs `pwd`/terminalrc   ~/.config/xfce4/terminal/terminalrc

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
	# ln -fsn /home/share-config/.config/smtube    ~/.config/smtube
	ln -fsn /home/share-config/.config/vivaldi   ~/.config/vivaldi
	ln -fsn /home/share-config/.config/vlc       ~/.config/vlc
	ln -fsn /home/share-config/.config/gpicview  ~/.config/gpicview
	ln -fsn /home/share-config/.config/viewnior  ~/.config/viewnior
	ln -fsn /home/share-config/.config/.shutter  ~/.shutter

	ln -fsn /home/share-config/.config/.local/fonts  ~/.local/share/fonts
	ln -fsn /home/share-config/.config/sublime-text-3 ~/.config/sublime-text-3
	ln -fsn /home/share-config/.config/google-chrome ~/.config/google-chrome
	ln -fsn /home/share-config/.config/google-chrome-unstable ~/.config/google-chrome-unstable

# install ruby by rvm
ruby:
	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
	\curl -sSL https://get.rvm.io | bash -s stable --ruby
	source ~/.rvm/scripts/rvm
	rvm install ruby --head
	gem install github-pages

npm:
	# https://docs.npmjs.com/getting-started/fixing-npm-permissions#option-2-change-npms-default-directory-to-another-directory
	mkdir "${HOME}/.npm-global" -p
	npm config set prefix '~/.npm-global'
	npm install -g n gulp webpack grunt browser-sync npm-check semistandard standard-format diff-so-fancy postcss-cli
	sudo n stable
	sudo n lts

logic-key:
	ln -fs `pwd`/xbindkeysrc   ~/.xbindkeysrc
	sudo apt-get install xbindkeys xautomation
