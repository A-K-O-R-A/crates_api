import 'package:crates_api/crates_api.dart';
import 'package:test/test.dart';

void main() {
  test('crate version', () async {
    expect(CratesAPI().crate("diesel").version("2.0.2").version, "2.0.2");
  });
}
