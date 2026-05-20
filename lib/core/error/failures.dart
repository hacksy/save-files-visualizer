/// Base failure class representing a business logic failure in the domain layer.
abstract class Failure {
  final String message;
  final dynamic details;

  const Failure(this.message, [this.details]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Failure &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          details == other.details;

  @override
  int get hashCode => message.hashCode ^ details.hashCode;

  @override
  String toString() => '$runtimeType: $message${details != null ? ' ($details)' : ''}';
}

/// Failure mapped from a ServerException.
class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error occurred', super.details]);
}

/// Failure mapped from a CacheException.
class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Cache operation failed', super.details]);
}

/// Failure mapped from a DatabaseException.
class DatabaseFailure extends Failure {
  const DatabaseFailure([super.message = 'Database operation failed', super.details]);
}

/// Failure mapped from a ParsingException.
class ParsingFailure extends Failure {
  const ParsingFailure([super.message = 'Failed to parse save file', super.details]);
}

/// Failure mapped from an AuthException.
class AuthFailure extends Failure {
  const AuthFailure([super.message = 'Authentication failed', super.details]);
}

/// Failure mapped from a NetworkException.
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection', super.details]);
}

/// Failure mapped from a ValidationException.
class ValidationFailure extends Failure {
  const ValidationFailure([super.message = 'Validation failed', super.details]);
}
