part of crates_api;

Future<Metadata> metadata(String crate) async {
  var json = await _getJSON('/crates/$crate');

  return Metadata.fromJson(json);
}
