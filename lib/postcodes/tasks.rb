require "postcodes/imports/csv"

namespace :postcodes do
  desc "download csv"
  task :import do
    Postcodes::Imports::Csv.download
  end
end
