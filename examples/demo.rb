#!/usr/bin/env ruby

require 'epicmix'

client = Epicmix::Client.new('username', 'password')
client.season_stats
