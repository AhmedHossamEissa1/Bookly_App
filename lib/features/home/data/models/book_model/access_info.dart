import 'package:equatable/equatable.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo extends Equatable {
  final String country;
  final String viewability;
  final bool embeddable;
  final bool publicDomain;
  final String textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String webReaderLink;
  final String accessViewStatus;
  final bool quoteSharingAllowed;

  const AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    this.epub,
    this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
        country: json['country'] as String? ?? 'Unknown',
        viewability: json['viewability'] as String? ?? 'UNKNOWN',
        embeddable: json['embeddable'] as bool? ?? false,
        publicDomain: json['publicDomain'] as bool? ?? false,
        textToSpeechPermission:
            json['textToSpeechPermission'] as String? ?? 'NOT_ALLOWED',
        epub: json['epub'] != null
            ? Epub.fromJson(json['epub'] as Map<String, dynamic>)
            : null,
        pdf: json['pdf'] != null
            ? Pdf.fromJson(json['pdf'] as Map<String, dynamic>)
            : null,
        webReaderLink: json['webReaderLink'] as String? ?? '',
        accessViewStatus: json['accessViewStatus'] as String? ?? 'UNKNOWN',
        quoteSharingAllowed: json['quoteSharingAllowed'] as bool? ?? false,
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'viewability': viewability,
        'embeddable': embeddable,
        'publicDomain': publicDomain,
        'textToSpeechPermission': textToSpeechPermission,
        'epub': epub?.toJson(),
        'pdf': pdf?.toJson(),
        'webReaderLink': webReaderLink,
        'accessViewStatus': accessViewStatus,
        'quoteSharingAllowed': quoteSharingAllowed,
      };

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed,
    ];
  }
}
