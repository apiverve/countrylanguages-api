# Country Languages API - Ruby Gem

Country Languages lists official and commonly spoken languages for any country using its two-letter ISO code. It returns the common country name, formal official name, an array of recognized languages, and the total language count.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_countrylanguages'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_countrylanguages
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_countrylanguages'

# Initialize the client
client = APIVerve::Countrylanguages::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ country: "ZW" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "ZW" })
  puts response["data"]
rescue APIVerve::Countrylanguages::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Countrylanguages::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Countrylanguages::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "ZW",
    "name": "Zimbabwe",
    "officialName": "Republic of Zimbabwe",
    "officialLanguages": [
      "Chibarwe",
      "English",
      "Kalanga",
      "Khoisan",
      "Ndau",
      "Northern Ndebele",
      "Chewa",
      "Shona",
      "Sotho",
      "Tonga",
      "Tswana",
      "Tsonga",
      "Venda",
      "Xhosa",
      "Zimbabwean Sign Language"
    ],
    "officialLanguageCount": 15
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/countrylanguages?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/countrylanguages?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/countrylanguages?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
