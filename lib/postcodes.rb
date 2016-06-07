require "postcodes/identify"
require "pry"
require "yaml"

module Postcodes
  DATA_DIR = File.dirname(__FILE__) + '/../data/japan.yml'
  ZIP_URL = "http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"
  include Postcodes::Identify
end
require 'postcodes/railtie' if defined?(Rails)
