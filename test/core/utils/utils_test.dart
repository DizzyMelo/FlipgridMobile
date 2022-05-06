import 'package:flipgrid_mobile/core/domain/exception/custom_exception.dart';
import 'package:flipgrid_mobile/core/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Valid Url',
    () {
      Uri tUri = Uri.parse('https://microsoft.com');
      expect(Utils.validateUrl('https://microsoft.com'), tUri);
    },
  );
  test(
    'Valid url without http protocol',
    () {
      Uri tUri = Uri.parse('https://microsoft.com');
      expect(Utils.validateUrl('microsoft.com'), tUri);
    },
  );

  test(
    'Invalid Url',
    () {
      expect(() => Utils.validateUrl('microsoft'),
          throwsA(isA<CustomException>()));
    },
  );
}
