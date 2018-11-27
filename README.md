# ExtendsBool

[![Maintainability](https://api.codeclimate.com/v1/badges/14edfa60e47e8d5dce9e/maintainability)](https://codeclimate.com/github/andreleoni/extends_bool/maintainability)
[![Build Status](https://travis-ci.com/andreleoni/extends_bool.svg?branch=master)](https://travis-ci.com/andreleoni/extends_bool)

Add `.to_bool` behaviour to the follow classes:

* String
* Integer
* Float
* Array
* Hash
* TrueClass
* FalseClass
* NilClass

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'extends_bool'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install extends_bool

## Usage

Simple, if the variable have any of `[nil, false, 0, 0.0, "", "0", "f", "false", "off", [], {}]` values, will return `false`, else, returns `true`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/extends_bool. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ExtendsBool project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/extends_bool/blob/master/CODE_OF_CONDUCT.md).
