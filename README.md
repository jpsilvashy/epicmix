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

[{
  "year" => 2011,
  "yearString" => "2011/12",
  "verticalFeet" => 61810,
  "lifts" => 52,
  "photos" => 40,
  "pins" => 17,
  "points" => 1457,
  "checkins" => 6,
  "daysOnMountain" => 6,
  "mostVisitedMountainID" => 5,
  "timeTagID" => 780,
  "isCurrentSeason" => false,
  "medals" => 0,
  "lessons" => 0,
  "academyLevel" => 0,
  "academyDiscipline" => "Ski"
}, {
  "year" => 2012,
  "yearString" => "2012/13",
  "verticalFeet" => 41554,
  "lifts" => 29,
  "photos" => 4,
  "pins" => 12,
  "points" => 907,
  "checkins" => 5,
  "daysOnMountain" => 5,
  "mostVisitedMountainID" => 5,
  "timeTagID" => 1269,
  "isCurrentSeason" => false,
  "medals" => 0,
  "lessons" => 0,
  "academyLevel" => 0,
  "academyDiscipline" => "Ski"
}]

```