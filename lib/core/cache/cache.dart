/// {@template cache_client}
/// An in-memory cache client.
/// {@endtemplate}
abstract class CacheClient {
  /// Writes the provide [key], [value] pair to the in-memory cache.
  void write<T extends Object>({required String key, required T value});

  /// Looks up the value for the provided [key].
  /// Defaults to `null` if no value exists for the provided key.
  T? read<T extends Object>({required String key});
}

class CacheClientImpl implements CacheClient {
  CacheClientImpl() : _cache = <String, Object>{};

  final Map<String, Object> _cache;

  @override
  void write<T extends Object>({required String key, required T value}) {
    _cache[key] = value;
  }

  @override
  T? read<T extends Object>({required String key}) {
    final value = _cache[key];
    if (value is T) return value;
    return null;
  }
}
