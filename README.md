# fuzzyfinder
Fuzzy Finder implemented in Ruby. Matches partial string entries from a list of strings. Works similar to fuzzy finder in SublimeText, Atom and Vim's Ctrl-P plugin.


## How does it work
See Amjith Ramanujam's blog post describing the algorithm: [http://blog.amjith.com/fuzzyfinder-in-10-lines-of-python](http://blog.amjith.com/fuzzyfinder-in-10-lines-of-python)


## Installation
Add this line to your application's Gemfile:

```ruby
# Add to your Gemfile
gem 'fuzzyfinder'

# or install manually
gem install fuzzyfinder
```

## Usage
```ruby
2.2.1 :001 > require 'fuzzyfinder'
 => true

2.2.1 :002 > Fuzzyfinder.find('user', ['api_user.doc', 'user_doc.doc', 'django_migrations.py', 'migrations.py'])
 => ["user_doc.doc", "api_user.doc"]

2.2.1 :003 > Fuzzyfinder.find('djm', ['api_user.doc', 'user_doc.doc', 'django_migrations.py', 'migrations.py'])
 => ["django_migrations.py"]
 
2.2.1 :004 > Fuzzyfinder.find('mig', ['api_user.doc', 'user_doc.doc', 'django_migrations.py', 'migrations.py'])
 => ["migrations.py", "django_migrations.py"]
```

# Contributing

1. Fork it ( https://github.com/mdsrosa/fuzzyfinder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# Inspired by
Amjith Ramanujam's implementation: [https://github.com/amjith/fuzzyfinder](https://github.com/amjith/fuzzyfinder)


# License
See the [LICENSE](LICENSE) file for license rights and limitations (MIT).
