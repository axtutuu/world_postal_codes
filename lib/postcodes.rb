require "postcodes/version"
require "pry"
require "yaml"

module Postcodes
  DATA_DIR = File.dirname(__FILE__) + '/../data/japan.yml'

  class << self
    def identify(code)
      db[code] || {}
    end

    def db
      @db ||= begin
        YAML.load(File.open(DATA_DIR))
      end
    end

    def load
      db
    end
  end
end
require 'postcodes/railtie' if defined?(Rails)
