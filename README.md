# IDGen

IDGen is a gem for generating easy-to-remember IDs out of nouns, adjectives and verbs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'idgen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install idgen

## Usage

```ruby
Idgen.pattern("noun") # => "attic"
Idgen.pattern("noun adjective verb") # => "aunt minimum collapse"
Idgen.pattern("noun-noun-noun") # => "dentist-fruit-pencil"
```

Three types of capitalisation are supported:

```ruby
Idgen.pattern("adjective") # => "endless"
Idgen.pattern("Adjective") # => "Genuine"
Idgen.pattern("ADJECTIVE") # => "UGLY"

Idgen.pattern("<Adjective-Adjective-Noun>" # => "<Official-Familiar-Bedroom>"
Idgen.pattern("verbVerbVerb") # => beatRelateTravel
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

