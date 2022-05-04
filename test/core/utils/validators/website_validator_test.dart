import 'package:flipgrid_mobile/core/utils/validators/website_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main(List<String> args) {
  late WebsiteValidator websiteValidator;

  setUp(() {
    websiteValidator = WebsiteValidator();
  });

  test('Valid website format. Empty field.', () {
    String tWebsite = '';
    var result = websiteValidator.valite(tWebsite);
    expect(result, null);
  });

  test('Valid website format', () {
    String tWebsite = 'microsoft.com';
    var result = websiteValidator.valite(tWebsite);
    expect(result, null);
  });

  test('Invalid website format.', () {
    String tWebsite = 'microsoft';
    var result = websiteValidator.valite(tWebsite);
    expect(result, "Invalid website format");
  });
}
