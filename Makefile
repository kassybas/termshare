

full-install:
	brew install tmux yudai/gotty/gotty
	@touch full-install

install:: full-install
	@cp gotty-share.sh /usr/local/bin/share-term
	@chmod +x /usr/local/bin/share-term
	@echo "All things installed: run with 'share-term'"
