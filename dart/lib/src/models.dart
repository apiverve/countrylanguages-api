/// Response models for the Country Languages API.

/// API Response wrapper.
class CountrylanguagesResponse {
  final String status;
  final dynamic error;
  final CountrylanguagesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CountrylanguagesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CountrylanguagesResponse.fromJson(Map<String, dynamic> json) => CountrylanguagesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CountrylanguagesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Country Languages API.

class CountrylanguagesData {
  String? country;
  String? name;
  String? officialName;
  List<String>? officialLanguages;
  num? officialLanguageCount;

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
  String country;

  CountrylanguagesRequest({
    required this.country,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
    };
}
