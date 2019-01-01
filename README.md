<h2 align="center">
  log-symbols
</h2>

<img src="https://raw.githubusercontent.com/palash25/log-symbols/master/assets/screenshot.png?token=AUYLnqKMkueLowvFHs0uEQXi6AzitOj6ks5cGQSewA%3D%3D" align="right" />

> Colored symbols for various log levels for your ruby apps.

[![](https://img.shields.io/travis/palash25/log-symbols.svg?style=popout)](https://travis-ci.org/palash25/log-symbols/builds)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'log-symbols'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install log-symbols

## Usage

```ruby
require "symbols"

LogSymbol = SYMBOLS::Log.new

puts LogSymbol.success + " success"
puts LogSymbol.info + " info"
puts LogSymbol.warning + " warning"
puts LogSymbol.error + " error"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at this [repo](https://github.com/palash25/log-symbols).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
