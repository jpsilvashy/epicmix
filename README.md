EpicMix Gem
===========

[![Build Status](https://travis-ci.org/jpsilvashy/epicmix.png?branch=master)](https://travis-ci.org/jpsilvashy/epicmix)

A Ruby gem for accessing your EpicMix data.


### What is Epic Mix?

EpicMix is Vail Resort's data layer and analytics platform, currently supported at: Vail, Beaver Creek, Breck, Keystone, Canyons, Heavenly, Northstar, Kirkwood, Afton Alps, Mt. Brighton.

If you ski or board at any of these locations and have an EpicMix enabled pass and account you can retrive your data.

Epicmix uses Passive RFIDs in the passes and high-gain recivers at nearly every chairlift line. More details can be found on the [EpicMix site](https://www.epicmix.com/HowItWorks.aspx#epicmix).


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
