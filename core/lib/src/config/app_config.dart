enum Flavor {
  dev,
  prod;

  factory Flavor.fromString(String flavor) {
    switch (flavor) {
      case 'Dev':
        return Flavor.dev;
      case 'Prod':
        return Flavor.prod;
      default:
        throw Exception('Unknown flavor: $flavor');
    }
  }
}

class AppConfig {
  final Flavor flavor;
  final String baseUrl;
  final String webSocketUrl;

  AppConfig({
    required this.flavor,
    required this.baseUrl,
    required this.webSocketUrl,
  });

  factory AppConfig.fromFlavor(Flavor flavor) {
    String baseUrl;
    String webSocketUrl;
    switch (flavor) {
      case Flavor.dev:
        baseUrl = 'https://rickandmortyapi.com/api/';
        webSocketUrl = '';
        break;
      case Flavor.prod:
        baseUrl = 'https://rickandmortyapi.com/api/';
        webSocketUrl = '';
        break;
      default:
        throw Exception('Unknown flavor: $flavor');
    }

    return AppConfig(
      flavor: flavor,
      baseUrl: baseUrl,
      webSocketUrl: webSocketUrl,
    );
  }
}
