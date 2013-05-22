Description
===========

Yet another slugging gem, convert a string to a slug with the option for custom mappings.

---

Installation
============

```bash
gem install slugity
```

or with bundler
```ruby
gem 'slugity'
```

Use
===

To use Slugity, require it and then include the module where needed. So:
```ruby
require 'slugity'
include Slugity

slugity("one + two = three")
# => "one-plus-two-equals-three"
```

To include the `to_slug` method on the `String` class
```ruby
require 'slugity/extend_string'

"one + two = three".to_slug
# => "one-plus-two-equals-three"
```

### Custom Matchers

The default matcher set is currently small, but with custom matchers you can extend it or write a new set from the ground up.

[View the full set here](lib/slugity/matchers/default.rb) or view a sample of the matched symbols.

```ruby
default: {
  /\s|\// => '-',
  /\~|\～/ => '-',
  /\＿/ => '_',
  /\&/ => 'and',
  /\+/ => 'plus',
  /\=/ => 'equals',
  /℡/ => 'tel',
  /™/ => 'tm',
  /℠/ => 'sm',
  /²/ => '2',
  /³/ => '3'
}
```

Lets say we want to use the default matchers, but we want exclamation marks to become 'omg'

```ruby
Slugity::Matchers.add :omg, true, {
  /\!/ => "omg"
}
```
We created a new matcher named `:omg`, told it to extend from the default matcher, and then added a matcher for the exclamation mark. To use it, we then tell the `slugity` or `to_slug` method to use our new matcher.

```ruby
slugity( "woot!", :omg )
# => "wootomg"

"woot!".to_slug(:omg)
# => "wootomg"
```

### Non-Slug Matching

Slugity is also good for manipulating strings that aren't destined to be slugs, such as strings in json. To do this though we'll need to use a different method included with Slugity, `stringity`. It operates just as `slugity` except that it doesn't escape unrecognized characters.

```ruby
string = %q{ a "quote" \ or so }
stringity(string, :json_string)
# => "a \"quote\" \\ or so"
```

Examples
========

```ruby
require 'slugity'
include Slugity

slugity "hello world"
# => hello-world

slugity "one & one"
# => one-and-one
```

```ruby
require 'slugity/extend_string'

"hello world".to_slug
# => hello-world

"one & one".to_slug
# => one-and-one
```

Testing
=======

```bash
$ bundle install
# => installs the testing gems

$ autotest
# => runs the specs
```


Contributing
============

If there is any thing you'd like to contribute or fix, please:

- Fork the repo
- Add tests for any new functionality
- Make your changes
- Verify all existing tests work properly
- Make a pull request

License
=======
The slugity gem is Copyright 2013 Steven Sloan, distributed under the MIT License.
