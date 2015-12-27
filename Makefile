# I systematically create all config files and respawn containers.

all:	configs

configs:
	docker build -t dockermailz_sync docker/sync
	docker run -v $(shell pwd)/data/confs:/confs -v $(shell pwd)/config.ini:/config.ini --rm --name dockermailz_sync_run dockermailz_sync
