require "postcodes/import"

namespace :postcodes do
  desc "download zip and convert to yaml"
  task :import do
    Postcodes::Import.run!
  end
end
