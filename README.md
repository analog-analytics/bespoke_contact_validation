# Bespoke::Contact::Validation

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'bespoke_contact_validation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bespoke_contact_validation

## Usage

    class MyContactModel < ActiveRecord::Base
      include Bespoke::Contact::Validation

      validate_as_bespoke_contact_title :title # validates inclusion in e.g. %w(Mr Mrs Miss...)
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
