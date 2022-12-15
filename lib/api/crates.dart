part of crates_api;

Future<CrateMetadata> metadata(String crate) async {
  var json = await _getJSON('/crates/$crate');

  return CrateMetadata.fromJson(json);
}
