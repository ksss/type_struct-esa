# TypeStruct::Esa

TypeStruct collection for [esa.io](https://esa.io/)

```rb
require 'type_struct/esa'

response_body = Esa::Client.new(...).posts.body # or JSON($stdin.read)
resp = TypeStruct::Esa::Posts.from_hash(response_body)
#=> #<TypeStruct::Esa::Posts ...>

resp.posts.full_name
#=> "Hello/World"
```

## Note

This library is unofficial...

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'type_struct-esa'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install type_struct-esa

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## See also

see also https://docs.esa.io/posts/102
