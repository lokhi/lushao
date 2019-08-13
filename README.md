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
lushao = Lushao.new('Your secret API key')

```
Your secret API key. You can get it in your dashboard from https://dashboard.lusha.co/api

## Person API
The person API lets you look up a person data based on his name and the company, or the domain of the company he works for. For example, you can get the person’s location, email and phone number, as well as his or her social network username.

### With company name
```ruby
result = lushao.find_person_with_company("intercom","Rob","Taylor")
```
### With company domain
```ruby
result = lushao.find_person_with_domain("intercom.com","Rob","Taylor")
```

### Accessing person response
```ruby
result.data.fetch(:phoneNumbers)
result.data.fetch(:emailAddresses)
```


## Company API
The company API provides information about any organization you look for to help you get a complete picture, such as overview, social network presence and location.

### With company name
```ruby
result = lushao.find_company_with_name("intercom")
```
### With company domain
```ruby
result = lushao.find_company_with_domain("intercom.com")
```

### Accessing company response
```ruby
result.data.fetch(:description)
result.data.fetch(:domain)
result.data.fetch(:employees)
result.data.fetch(:founded)
result.data.fetch(:founders)
result.data.fetch(:logo)
result.data.fetch(:name)
result.data.fetch(:social)
result.data.fetch(:website)
```

## Check for errors
```ruby
if  defined?(result.errors)
  puts result.errors[:message]
else
    # Accessing response and do some stuff
end
```


## Lusha API documentation
https://www.lusha.co/docs/

## License
The lushao GEM is released under the MIT License.


## Contributing
1. Fork it ( https://github.com/[my-github-username]/lushao/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
