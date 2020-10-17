# ApartmentJob

ActiveJob support for Apartment Gem. Its a small wrapper around ActiveJob that takes care of storing the current tenant that a job is enqueued within and make sure to switch to it when the job is being processed. No need to pass around current tenant details to your background jobs.

ApartmentJob uses ActiveJob's public api for handling current tenant details, so it is not tied to any specific queuing adapter. It should work fine with all [queue adapters supported by ActiveJob](https://api.rubyonrails.org/classes/ActiveJob/QueueAdapters.html).


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'apartment_job'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install apartment_job
```

## Usage

That's it. Each job that is queued will also save `Apartment::Tenant.current` value along with it. Then when the server pops it, it will run the job within an `Apartment::Tenant.switch` block using the tenant that was active when the job was enqueued.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
