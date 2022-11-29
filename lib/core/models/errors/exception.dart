abstract class ServerException implements Exception {
  final String message;
  const ServerException(this.message);

  List<Object> get props => [message];
}

abstract class CacheException implements Exception {
  final String message;
  const CacheException(this.message);

  List<Object> get props => [message];
}
