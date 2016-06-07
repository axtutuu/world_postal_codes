require "yaml"

module WorldPostalCodes
  module Identify
    def jp(code)
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
