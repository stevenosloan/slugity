Description
===========

Yet another slugging gem, this one makes sure you want to extend the String class instead of assuming.

---

Instalation
===========

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
```
then gives you access to the `slugity` method. The `slugity` method takes a string and returns a slug.

To include the `to_slug` method on the `String` class
```ruby
require 'slugity/extend_string'
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
