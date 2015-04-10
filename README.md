# SimplePreviewCounter

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/simple_preview_counter`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem "simple_preview_counter",  github: "Asp1d/simple_preview_counter"
```

And then execute:

    $ bundle exec rails g simple_preview_counter:install YourModelName


## Usage

Add 
  
    include SimplePreviewCounter

to your model, example:

```ruby
class YourModelName < ActiveRecord::Base
  ...
  include SimplePreviewCounter
  ...

end
```

Then in your controller do

```ruby
def show
   @model.count_preview
   @model.save
end
```

or

```ruby
def show
   @model.count_preview!
end
```

Also you can fake data by passing integer directly to method

```ruby
def show
   @model.count_preview!(9000)
end
```



You can get actual preview count by calling `preview_count`

```
<%= @model.preview_count %>
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/simple_preview_counter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
