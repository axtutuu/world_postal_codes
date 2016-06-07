# WorldPostalCodes [![Gem Version](https://badge.fury.io/rb/world_postal_codes.svg)](https://badge.fury.io/rb/world_postal_codes)

Simmple gemt to get city, state for given zip code. supported country is below

* Japan

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'world_postal_codes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install world_postal_codes

## Usage

```
WorldPostalCodes.jp("00000-")
# => {:prefecture=>"神奈川県", :prefecture_kana=>"カナガワケン", :city=>"相模原市南区", :city_kana=>"サガミハラシミナミク"}
```

laoding master file
```
# config/initializers/world_postal_codes.rb
WorldPostalCodes.load
```

Uplaod master file
```
bin/rake postal_codes:import_jp
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

Fork it
Create your feature branch (git checkout -b my-new-feature)
Commit your changes (git commit -am 'Add some feature')
Push to the branch (git push origin my-new-feature)
Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

