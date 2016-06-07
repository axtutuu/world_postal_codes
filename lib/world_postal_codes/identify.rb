require "yaml"

module WorldPostalCodes
  module Identify
    def jp(code)
      code = code.tr('０-９', '0-9')
      code = code.gsub(/-|ー/, "")

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
