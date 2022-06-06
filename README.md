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

To publish to our private gemserver you will first need to get the api key.

The api key can be found in vault: https://vault.bonus.ly/ui/vault/secrets/kv/show/global/gemstash

To set it correctly first check to see if you already have a file at `~/.gem/credentials` if you do
you can skip to editing that file. If not follow these steps to create it:

```shell
$ mkdir -p ~/.gem
$ touch ~/.gem/credentials
$ chmod 0600 ~/.gem/credentials
```

Once you have a credentials file you will need to add the following line to it:

```yaml
---
:private_gemserver_key: <API KEY GOES HERE>
```

Now that you have the credentials configured use the following command to push a new version to the private gemserver:

```shell
$ gem push --key private_gemserver_key --host https://rubygems.bonusly.dev/private pkg/filereaderjs-X.X.X.gem
```

Now you can have the applications which use this gem run bundle update to get the new version.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bonusly/filereaderjs.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
