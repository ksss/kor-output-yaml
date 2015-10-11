kor-output-yaml
===

[![Build Status](https://travis-ci.org/ksss/kor-output-yaml.svg?branch=master)](https://travis-ci.org/ksss/kor-output-yaml)

YAML output plugin for [kor](https://github.com/ksss/kor)

## Usage

```shell
$ kor markdown yaml --help
Usage: kor [options]
        --key=KEY                    select keys (e.g. foo,bar,baz)
```

```shell
$ cat table.md
| foo | bar | baz |
| --- | --- | --- |
| 100 | 200 | 300 |
| 400 | 500 | 600 |

$ kor markdown yaml < table.md
---
foo: '100'
bar: '200'
baz: '300'
---
foo: '400'
bar: '500'
baz: '600'

$ kor markdown yaml --key=bar,foo < table.md
---
foo: '100'
bar: '200'
---
foo: '400'
bar: '500'
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kor-output-yaml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kor-output-yaml

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ksss/kor-output-yaml. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Refs

- https://github.com/ksss/kor
