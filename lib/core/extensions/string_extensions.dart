extension StringNullableExtensions on String? {
  /// Returns true if it is null or empty
  bool isNullOrEmpty() {
    if (this != null && this!.isNotEmpty) return false;
    return true;
  }
}
