# Country Languages API - Dart/Flutter Client

Country Languages is a simple tool for getting the list of official and commonly spoken languages in a specific country.

[![pub package](https://img.shields.io/pub/v/apiverve_countrylanguages.svg)](https://pub.dev/packages/apiverve_countrylanguages)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Country Languages API](https://apiverve.com/marketplace/countrylanguages?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_countrylanguages: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_countrylanguages/apiverve_countrylanguages.dart';

void main() async {
  final client = CountrylanguagesClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'name': 'ZW'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Country Languages API](https://apiverve.com/marketplace/countrylanguages?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/countrylanguages](https://docs.apiverve.com/ref/countrylanguages?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
