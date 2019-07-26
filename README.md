# Lushao

A tiny ruby wrapper around Lusha API. The Lusha API enables you to enrich and authenticate the business profiles you utilize and offer.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lushao'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lushao

## Usage

```ruby
require 'lushao'
email_hunter = Lushao.new('Your secret API key')

```
Your secret API key. You can generate it in your dashboard from https://hunter.io
