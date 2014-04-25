# Vocaloo

[![Build Status](https://travis-ci.org/donnpebe/vocaloo.png?branch=master)](https://travis-ci.org/donnpebe/vocaloo) [![Coverage Status](https://coveralls.io/repos/donnpebe/vocaloo/badge.png)](https://coveralls.io/r/donnpebe/vocaloo)

Make string more expresive and fun

## Installation

Add this line to your application's Gemfile:

    gem 'vocaloo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vocaloo

## Usage

```rb
require 'vocaloo'

"Goal!".hyperbolize # => Goooaaal!
"Goal!".hyperbolize(length: 4) # => Gooooaaaal!
"Help me".dramatize # => Help me!!!
"Help me".dramatize(length: 4) # => Help me!!!!
"Google".stringosaur # => Goowrglewr
"Please".hyperbolize.dramatize # => Pleeeaaaseee!!!

Vocaloo.hyperbolize("What") # => Whaaat
Vocaloo.dramatize("What") # => What!!!
Vocaloo.stringosaur("What") # => Whawrt
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
