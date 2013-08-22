# rspec_lister

This gem provides a command to list out your rspec tests.

## Installation

Add this line to your application's Gemfile in the test group:

    gem 'rspec_lister'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_lister

## Usage

Run `rspec_lister` and you will be presented with a list of rspec
tests that your app has. For example:

    spec/lib/foo_spec.rb:3
    spec/lib/foo_spec.rb:6
    spec/lib/foo_spec.rb:9
    spec/lib/foo_spec.rb:12
    spec/lib/bar_spec.rb:10
    spec/lib/bar_spec.rb:12
    etc...

This list can then be fed to other programs that can operate on it.
Since I think it has value in itself, making a gem for it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
