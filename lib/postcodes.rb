require "postcodes/version"
require "pry"

module Postcodes
  DATA_DIR = File.dirname(__FILE__) + '/../data/japan.yml'
  def self.hello
    p "hello"
  end
end
require 'postcodes/railtie' if defined?(Rails)
