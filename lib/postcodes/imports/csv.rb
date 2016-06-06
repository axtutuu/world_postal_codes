require 'open-uri'
require "zip"
require "csv"
require 'nkf'
require 'yaml'

module Postcodes
  module Imports
    module Csv
      ZIP_URL = "http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"
      class << self

        def download
          postcodes = []
          Zip::File.open(open(ZIP_URL).path) do |zip|
            file = zip.glob('*.CSV').first
            CSV.parse(file.get_input_stream.read, encoding: "UTF-8") do |row|
              postcodes << convert(row)
            end
          end
          write(postcodes)
        end

        private
        def convert(row)
          {
            zipcode:         row[2],
            prefecture:      NKF.nkf('-S -w', row[6]),
            prefecture_kana: NKF.nkf('-S -w', row[3]),
            city:            NKF.nkf('-S -w', row[7]),
            city_kana:       NKF.nkf('-S -w', row[4]),
            town:            NKF.nkf('-S -w', row[8]),
            town_kana:       NKF.nkf('-S -w', row[5])
          }
        end

        def write(postcodes)
          File.open(Postcodes::DATA_DIR, "wb") do |file|
           file.write postcodes.to_yaml
          end
        end

      end
    end
  end
end
