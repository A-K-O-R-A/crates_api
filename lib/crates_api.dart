import 'dart:convert';

import 'package:crates_api/types/metadata.dart';
import 'package:http/http.dart' as http;

int calculate() {
  return 6 * 7;
}

Future<void> uwu() async {
  final client = http.Client();

  try {
    var body =
        await client.read(Uri.http('crates.io', '/api/v1/crates/reqwest'));
    //print(body);

    var metadata = Metadata.fromJson(jsonDecode(body));
  } finally {
    client.close();
  }
}
