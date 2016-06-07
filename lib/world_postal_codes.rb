require "world_postal_codes/identify"
require "pry"
require "yaml"

module WorldPostalCodes
  DATA_DIR = File.dirname(__FILE__) + '/../data/japan.yml'
  ZIP_URL = "http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"
  extend WorldPostalCodes::Identify

  # class << self
  #   def identify(code)
  #     db[code] || {}
  #   end

  #   def db
  #     @db ||= begin
  #       YAML.load(File.open(DATA_DIR))
  #     end
  #   end

  #   def load
  #     db
  #   end
  # end

end
require 'world_postal_codes/railtie' if defined?(Rails)
