#!/usr/bin/ruby
# require "epicmix/version"
require 'httparty'

module Epicmix
  class Client

    attr_accessor :username, :password, :token

    # Initializes and logs in to Epicmix
    def initialize(username, password)
      @username, @password = username, password
      @token = login
    end

    # Login to epic mix
    def login
      url = 'https://www.epicmix.com/vailresorts/sites/epicmix/api/mobile/authenticate.ashx'

      options = { :query => { :loginID => username, :password => password }}
      response = HTTParty.post(url, options)

      token_from(response) # if response.instance_of? Net::HTTPOK
    end

    # Gets all your season stats
    def season_stats
      url = 'https://www.epicmix.com/vailresorts/sites/epicmix/api/mobile/userstats.ashx'

      options = { :timetype => 'season', :token => token }
      response = HTTParty.get(url, :query => options, :headers => headers)

      JSON.parse(response.body)['seasonStats']
    end

    # Gets token out of response cookies
    def token_from(response)
      response.headers['Set-Cookie'][%r{ASP.NET_SessionId=([^;]+);}, 1]
    end

    # Sets headers
    def headers(extra = {})
      extra.merge 'Cookie' => [session_id, website, session_id].join('; '),
        'Accept-Encoding' => 'gzip',
        'User-Agent' => 'EpicMix 15880 rv:2.1 (iPhone; iPhone OS 5.0.1; en_US)',
        'Host' => 'www.epicmix.com'
    end

    # Get the sesson id, to be inserted into the cookies in the header
    def session_id
      "ASP.NET_SessionId=#{token}"
    end

    def website
      "website#sc_wede=1"
    end

  end
end
