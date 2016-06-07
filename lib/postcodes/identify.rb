require "yaml"

module Postcodes
  module Identify
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
end
