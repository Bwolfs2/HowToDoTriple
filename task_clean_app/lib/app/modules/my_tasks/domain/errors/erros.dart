abstract class IFailure implements Exception {
  String get message;
}

class InvalidTask extends IFailure {
  final String message;
  InvalidTask({required this.message});
  @override
  String toString() {
    return message;
  }
}

class DatabaseError extends IFailure {
  final String message;
  DatabaseError({required this.message});
}
