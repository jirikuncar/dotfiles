install: install-vim install-bash install-virtualenvwrapper \
         install-terminal-settings install-git

.%: vim/%.symlink
	@rm ~/$@ 2>/dev/null
	ln -s `pwd`/$< ~/$@

.%: bash/%.symlink
	@rm ~/$@ 2>/dev/null
	ln -s `pwd`/$< ~/$@

.%: git/%.symlink
	@rm ~/$@ 2>/dev/null
	ln -s `pwd`/$< ~/$@

.gitconfig: git/gitconfig.symlink
	@rm ~/$@ 2>/dev/null
	cp `pwd`/$< ~/$@
	@git config --global sendemail.smtppass "$(shell read -s -p "Password: " REPLY; echo "$$REPLY")"
	chmod 600 ~/.gitconfig

git-submodule:
	@git submodule init
	@git submodule update

install-vim: git-submodule .vim .vimrc
	@echo "Vim config installed"

install-bash: .bash_aliases .bash_export .bash_functions .bash_profile .bash_prompt .bashrc .inputrc
	@echo "Bash config installed"

install-git: .gitconfig .gitignore_global .git_template
	@echo "Git config installed"

install-virtualenvwrapper:
	mkdir -p ~/.virtualenvs
	ln -s `pwd`/virtualenvwrapper/* ~/.virtualenvs

dump-terminal-settings:
	cp ~/Library/Preferences/com.apple.Terminal.plist terminal
	plutil -convert xml1 terminal/com.apple.Terminal.plist

install-terminal-settings:
ifeq ($(shell uname),Darwin)
	cp ~/Library/Preferences/com.apple.Terminal.plist terminal/old-settings-`date --rfc-2822`.bak
	cp terminal/com.apple.Terminal.plist ~/Library/Preferences
	@echo "Old terminal settings were saved in terminal folder"
endif
