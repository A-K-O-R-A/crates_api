[![pub package](https://img.shields.io/pub/v/crates_api.svg)](https://pub.dev/packages/crates_api)
[![package publisher](https://img.shields.io/pub/publisher/crates_api.svg)](https://pub.dev/packages/crates_api/publisher)

## Crates.io API Wrapper for Dart

This wrapper lets you easily interact with the crates.io api.

- Exposes all API types
- Simple dart api
- _soon_ 100% API Coverage

Note: Before using this package you should read the [Crates.io Package Policies](https://crates.io/policies#crawlers).

## Example

See `example/example.dart`

```dart
import 'package:crates_api/crates_api.dart';
import 'package:crates_api/types/v1/error.dart';

void main() async {
  var api = CratesAPI("crates_api.dart testing");

  var versionR = api.crate("diesel").version("2.0.2");

  try {
    var versionMetadata = await versionR.metadata();
    var versionDownloads = await versionR.downloads();
    var checksum = versionMetadata.checksum;
    print(
      "Checksum of diesel version 2.0.2 $checksum",
    );

    var downloadEntry = versionDownloads[0];
    var entryVersion = downloadEntry.version;
    var entryDate = downloadEntry.date;
    var entryDownloads = downloadEntry.downloads;
    print(
        "Version $entryVersion was downloaded $entryDownloads times on $entryDate");
  } on APIException catch (e) {
    print(e.errors.map((e) => e.detail));
  }
}
```
