enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'BK App - Dev';
      case Flavor.prod:
        return 'BK App';
      default:
        return 'BK App - ?';
    }
  }

}
