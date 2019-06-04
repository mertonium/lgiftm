setup:
	bundle install

run: setup
	bundle exec ruby lgtm.rb

.PHONY: setup run

