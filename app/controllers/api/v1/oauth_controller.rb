class Api::V1::OauthController < ApplicationController

  def test
    require 'dotenv'
    keys = Dotenv.load(".env")
    RSpotify::authenticate(keys["client_id"], keys["client_secret"])
    render json: keys
  end
  
end

  # express = require('express'); // Express web server framework
  # request = require('request'); // "Request" library

  # querystring = require('querystring');
  # querystring => ruby:
  # Rack::Utils.parse_nested_query("a=2") #=> {"a" => "2"}
  
  # cookieParser = require('cookie-parser');

  # client_id = '770a27c2688149e09040b0c0f01c359a'; // Your client id
  # client_secret = '757a5f3b9177482db7c6237cf8dd06da'; // Your secret
  # redirect_uri = 'http://localhost:8888/callback'; // Or Your redirect uri
  
  # def generateRandomString(length)
  #   text = ''
  #   possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
  #   length.times do
  #     text += possible[(rand() * possible.length).floor()]
  #   end
  #   return text
  # end

  # stateKey = 'spotify_auth_state'