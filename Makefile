.PHONY: *

#################################################################
# help
#################################################################

help:
	@echo "GIT TARGETS:"
	@echo "\tprune-branches - prune obsolete local tracking branches and local branches"
	@echo "\tprune-branches-force|pbf - as above but force delete local branches"
	@echo "\tpost-PR-merge-sync|pms - switch to master, pull and run pbf target"


#################################################################
# git targets
#################################################################

prune-branches:
	git remote prune origin
	git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $$1; }' | xargs git branch -d


prune-branches-force:
	git remote prune origin
	git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $$1; }' | xargs git branch -D

pbf: prune-branches-force

post-PR-merge-sync-step-1:
	git switch master
	git pull

post-PR-merge-sync: post-PR-merge-sync-step-1 prune-branches-force

pms: post-PR-merge-sync
