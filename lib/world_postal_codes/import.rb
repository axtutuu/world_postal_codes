require 'open-uri'
require "zip"
require "csv"
require 'nkf'
require 'yaml'

module WorldPostalCodes
  module Import
    class << self

      def run!
        postal_codes = []
        Zip::File.open(open(WorldPostalCodes::ZIP_URL).path) do |zip|
          file = zip.glob('*.CSV').first
          CSV.parse(file.get_input_stream.read, encoding: "UTF-8") do |row|
            postal_codes << convert(row)
          end
        end
        write(postal_codes.to_h)
      end

      private
      def convert(row)
        [
          row[2].to_s,
          {
            prefecture:      NKF.nkf('-S -w', row[6]),
            prefecture_kana: NKF.nkf('-S -w', row[3]),
            city:            NKF.nkf('-S -w', row[7]),
            city_kana:       NKF.nkf('-S -w', row[4])
          }
        ]
      end

      def write(postal_codes)
        File.open(WorldPostalCodes::DATA_DIR, "wb") do |file|
         file.write postal_codes.to_yaml
        end
      end

    end
  end
end
