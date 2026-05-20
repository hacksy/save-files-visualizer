/// Base exception class for all custom application exceptions.
abstract class AppException implements Exception {
  final String message;
  final dynamic details;

  const AppException(this.message, [this.details]);

  @override
  String toString() => '$runtimeType: $message${details != null ? ' ($details)' : ''}';
}

/// Thrown when a server or network API request fails.
class ServerException extends AppException {
  const ServerException([super.message = 'Server error occurred', super.details]);
}

/// Thrown when local caching or file storage retrieval fails.
class CacheException extends AppException {
  const CacheException([super.message = 'Cache operation failed', super.details]);
}

/// Thrown when local database operations (e.g. SQLite, Hive) fail.
class DatabaseException extends AppException {
  const DatabaseException([super.message = 'Database operation failed', super.details]);
}

/// Thrown when save file visualizer parsing operations fail.
class ParsingException extends AppException {
  const ParsingException([super.message = 'Failed to parse save file', super.details]);
}

/// Thrown during authentication or authorization failures.
class AuthException extends AppException {
  const AuthException([super.message = 'Authentication failed', super.details]);
}

/// Thrown when network connection is unavailable or timed out.
class NetworkException extends AppException {
  const NetworkException([super.message = 'No internet connection', super.details]);
}

/// Thrown when user input validation fails.
class ValidationException extends AppException {
  const ValidationException([super.message = 'Validation failed', super.details]);
}
