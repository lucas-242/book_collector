extension StringNullableExtensions on String? {
  /// Returns true if it is null or empty
  bool isNullOrEmpty() {
    if (this != null && this!.isNotEmpty) return false;
    return true;
  }

  /// Converts the string formmated as YYYY-MM-DD to [DateTime]
  ///
  /// Throws an error if the string is badly formatted
  DateTime toDateTime() {
    if (this.isNullOrEmpty()) {
      throw Exception('Error to convert date');
    }

    final parts = this!.split('-');
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
