.PHONY: install generate clean

DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST)))/../../..)

install:
	bundle install

generate: \
	Gemfile \
	Gemfile.lock

Gemfile: $(DIR)/Gemfile
	cp $^ $@

Gemfile.lock: $(DIR)/Gemfile.lock
	cp $^ $@

clean:
	rm Gemfile Gemfile.lock
