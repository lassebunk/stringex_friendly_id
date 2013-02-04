# StringexFriendlyId

StringexFriendlyId combines [Stringex](https://github.com/rsl/stringex) with [FriendlyId](https://github.com/norman/friendly_id) giving you access to FriendlyId's slugging magic combined with Stringex's ingenious transliterations.

With FriendlyId standalone, you normally get URLs like:

```ruby
"it's nothing at all" => "it-s-nothing-at-all"
"rock & roll" => "rock-roll"
"$12 worth of Ruby power" => "12-worth-of-ruby-power"
"10% off if you act now" => "10-off-if-you-act-now"
"tell your readers 你好" => "tell-your-readers"
```

With StringexFriendlyId, you get URLs like these instead:

```ruby
"it's nothing at all" => "its-nothing-at-all"
"rock & roll" => "rock-and-roll"
"$12 worth of Ruby power" => "12-dollars-worth-of-ruby-power"
"10% off if you act now" => "10-percent-off-if-you-act-now"
"tell your readers 你好" => "tell-your-readers-ni-hao"
```

Just by including this gem and using FriendlyId [like you normally would](https://github.com/norman/friendly_id#rails-quickstart).

## Installation

In your *Gemfile*:

```ruby
gem 'stringex_friendly_id'
```

Then run:

```bash
$ bundle install
```

You don't need to include FriendlyId or Stringex – they will be included by StringexFriendlyId.

## Usage

Just use FriendlyId [like you normally would](https://github.com/norman/friendly_id#rails-quickstart). Stringex's transliteration magic was enabled when you included the gem in your Gemfile.

## Contributing

1. Fork the repo
2. Create a feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a pull request

Copyright &copy; 2013 Lasse Bunk, released under the MIT license