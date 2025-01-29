# Filereaderjs

A gem wrapper for filereader.js (https://github.com/bgrins/filereader.js)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'filereaderjs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filereaderjs

## Usage

Add `//= require filereader` to `application.js`

## Publishing

To publish to Github Packages (our private gem server):
1. Change the version of the gem in `/lib/devise_two_factor/version.rb`.
2. Run `bundle install` to update the version in the gemspec and Gemfile files.
3. Tag the commit you want to publish (from the master branch) with the new version. You can run something like `git tag v1.0.4` and push to Github.
4. Github actions will publish the new version of the gem for you. The publish step is kicked off by the push with a version tag.
5. Now you can have the applications which use this gem run bundle update to get the new version.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bonusly/filereaderjs.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
