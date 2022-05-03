class Utils {
  static Uri validateUrl(String url) {
    if (!url.contains("http")) {
      return Uri.parse("https://$url");
    }
    return Uri.parse(url);
  }
}
