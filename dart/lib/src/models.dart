/// Response models for the Country Languages API.

/// API Response wrapper.
class CountrylanguagesResponse {
  final String status;
  final dynamic error;
  final CountrylanguagesData? data;

  CountrylanguagesResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CountrylanguagesResponse.fromJson(Map<String, dynamic> json) => CountrylanguagesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CountrylanguagesData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Country Languages API.

class CountrylanguagesData {
  String? country;
  String? name;
  String? officialName;
  List<String>? officialLanguages;
  int? officialLanguageCount;

  CountrylanguagesData({
    this.country,
    this.name,
    this.officialName,
    this.officialLanguages,
    this.officialLanguageCount,
  });

  factory CountrylanguagesData.fromJson(Map<String, dynamic> json) => CountrylanguagesData(
      country: json['country'],
      name: json['name'],
      officialName: json['officialName'],
      officialLanguages: (json['officialLanguages'] as List?)?.cast<String>(),
      officialLanguageCount: json['officialLanguageCount'],
    );
}

class CountrylanguagesRequest {
  String name;

  CountrylanguagesRequest({
    required this.name,
  });

  Map<String, dynamic> toJson() => {
      'name': name,
    };
}
