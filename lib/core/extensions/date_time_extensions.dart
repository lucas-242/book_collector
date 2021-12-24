extension DateTimeExtensions on DateTime {
  /// Converts the [dateAsString] formmated as YYYY-MM-DD to [DateTime]
  ///
  /// Throws an error if the string is badly formatted
  DateTime fromString(String dateAsString) {
    final parts = dateAsString.split('-');
    if (parts.length < 3) {
      throw Exception('Error to convert date');
    }

    final convertedParts = parts.map((e) => int.parse(e));
    final response = DateTime(
      convertedParts.elementAt(0),
      convertedParts.elementAt(1),
      convertedParts.elementAt(2),
    );
    return response;
  }
}
