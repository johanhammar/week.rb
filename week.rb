#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'
require 'date'

require "sinatra/reloader" if development?

get '/' do
  d = Date.today
  @week = d.cweek

  haml :index_mobile
end

