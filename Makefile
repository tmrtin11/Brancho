
.PHONY: usage sync server test migrate

sync-dir = ~/tmp-project-mirror

usage:
	@echo ''
	@echo SYNOPSIS
	@echo '     'make \[migrate \| test \| server\]
	@echo ''
	@echo OPTIONS
	@echo '     'migrate
	@echo '             'rails db:migrate:reset db:seed
	@echo '     'test
	@echo '             'rails test
	@echo '     'server
	@echo '             'rails server -b 0.0.0.0
	@echo ''

sync:
	rsync -avz --delete ./ $(sync-dir)
	@echo "\n===============================================================================\n"

server: sync
	cd $(sync-dir) && \
rails server -b 0.0.0.0

test: sync
	cd $(sync-dir) && \
rails test

migrate: sync
	cd $(sync-dir) && \
rails db:migrate:reset db:seed
	rsync -avz --delete $(sync-dir)/ .

