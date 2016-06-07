require "world_postal_codes/import"

namespace :postal_codes do
  desc "download zip and convert to yaml"
  task :import_jp do
    WorldPostalCodes::Import.run!
  end
end
