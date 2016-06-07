require "world_postal_codes/identify"
require "pry"
require "yaml"

module WorldPostalCodes
  DATA_DIR = File.dirname(__FILE__) + '/../data/japan.yml'
  ZIP_URL = "http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"
  extend WorldPostalCodes::Identify
end
require 'world_postal_codes/railtie' if defined?(Rails)
