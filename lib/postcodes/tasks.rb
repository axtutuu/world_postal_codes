require "postcodes/import"

namespace :postcodes do
  desc "download csv"
  task :import do
    Postcodes::Import.run!
  end
end
