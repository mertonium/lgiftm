setup:
	bundle install

run: setup
	bundle exec ruby lgtm.rb -p 5555

.PHONY: setup run

