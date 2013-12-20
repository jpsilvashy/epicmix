EpicMix Gem
===========

A Ruby gem for accessing your EpicMix data.

### Usage

    gem install epicmix

Or add it to your Gemfile

    gem 'epicmix'


### Example

``` ruby
# require the gem
require 'epicmix'

# connect using your epic mix username and password
client = Epicmix::Client.new('username', 'password')

# display your stats for each season
puts client.season_stats
```