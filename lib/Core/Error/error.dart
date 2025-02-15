abstract class Error {
  final String errMessage;

  Error(this.errMessage);
}

class ApiError extends Error {
  ApiError(super.errMessage);
}
