# BSpec
## The Gem. The Man. The Legend.
### Seriously
This is me proving to myself that I can make a lightweight test framework. It is obviously inspired by the very wonderful [RSpec](http://rspec.info/). I also wanted to learn how to make a gem.

### How to use it
- clone the repo
- navigate to the directory with the `bspec.gemspec` file
- run `gem build bspec.gemspec`
- run `gem install bspec-#{version}`
  + (the version number should be the name of the new file - tab complete is your friend)
- in ruby: `require 'bspec'`

### What's next?
- Command line support (running `bspec` should run your tests from the `spec` directory)
- Pretty ASCII art (the way RSpec has a nice little progress bar and records the test failures)
- Mocks
- More sophisticated `want` matchers 
- `it` and `describe` blocks and their aliases
