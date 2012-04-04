## Introduction

Nash improves the error output if you get nil when expecting a hash.

Before: ```undefined method `[]' for nil:NilClass```

After:  ```undefined method `[]' for nil:NilClass, with argument :foo```

**For example:**

```ruby
hash = { :foo => { :bar => { :baz => {} }, :quux => nil } }
hash[:foo][:bar][:baz]  # => {}
hash[:foo][:quux][:baz] # NoMethodError: undefined method `[]' for nil:NilClass, with argument :baz
```

So you know that `hash[:foo][:quux]` must be nil. Previously, you wouldn't know whether `hash[:foo]` or `hash[:foo][:quux]` was nil.

This is especially useful if you're feeling particularly contemptuous towards the law of demeter, or dealing with lots of hash nesting.

## Install

```ruby
gem install nash
```

Then require it in an initializer:

```ruby
require 'nash'
```

## Contribution

Please feel free to contribute, either through pull requests or feature requests here on Github.

For news and the latest updates, follow me on Twitter ([@cpatuzzo](https://twitter.com/#!/cpatuzzo)).
