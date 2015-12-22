# Envly [![Build Status](https://img.shields.io/travis/chrisenytc/envly/master.svg)](http://travis-ci.org/chrisenytc/envly) [![GEM version](https://img.shields.io/gem/v/envly.svg)](https://rubygems.org/gems/envly) [![Gem Downloads](https://img.shields.io/gem/dt/envly.svg)](https://rubygems.org/gems/envly) [![Code Climate](https://img.shields.io/codeclimate/github/chrisenytc/envly.svg)](https://codeclimate.com/github/chrisenytc/envly) [![Coverage](https://img.shields.io/codeclimate/coverage/github/chrisenytc/envly.svg)](https://codeclimate.com/github/chrisenytc/envly) [![Dependencies](https://img.shields.io/gemnasium/chrisenytc/envly.svg)](https://github.com/chrisenytc/envly)

> A awesome tool to manage sensitive environment variables in your development environment

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'envly'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install envly

## Usage

#### Set environment variables

```bash
$ envly set USERNAME=chrisenytc SECRET=keepitsecret --project envly --key=topsecretkey
```

#### List projects

```bash
$ envly list
```

#### Show environment variables

```bash
$ envly show --project envly --key=topsecretkey
```

#### Load environment variables

```bash
$ source <(envly load --project envly --key=topsecretkey)
```

## Status

WORK IN PROGRESS

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/chrisenytc/envly](https://github.com/chrisenytc/envly). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

1. Fork it [chrisenytc/envly](https://github.com/chrisenytc/envly/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The MIT License

Copyright (c) 2015, Christopher EnyTC

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

