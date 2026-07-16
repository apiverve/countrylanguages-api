# Country Languages API - PHP Package

Country Languages is a simple tool for getting the list of official and commonly spoken languages in a specific country.

## Installation

Install via Composer:

```bash
composer require apiverve/countrylanguages
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Countrylanguages\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['name' => 'ZW']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Countrylanguages\Client;
use APIVerve\Countrylanguages\Exceptions\APIException;
use APIVerve\Countrylanguages\Exceptions\ValidationException;

try {
    $response = $client->execute(['name' => 'ZW']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/countrylanguages?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/countrylanguages?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/countrylanguages?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
