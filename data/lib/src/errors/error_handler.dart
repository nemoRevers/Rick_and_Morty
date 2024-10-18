import 'package:core/core.dart';
import 'package:domain/domain.dart';

class ErrorHandler {
  final AppEventNotifier _eventNotifier;

  ErrorHandler({
    required AppEventNotifier eventNotifier,
  }) : _eventNotifier = eventNotifier;

  AppException handleError(DioException error) {
    final Response<dynamic>? response = error.response;

    if (response == null) {
      return const AppException('empty response');
    }

    if (error.type == DioExceptionType.connectionError) {
      _eventNotifier.notify(const InternetConnectionLostEvent());
      return const AppException('no connection');
    }

    final int? statusCode = response.statusCode;
    switch (statusCode) {
      case 400:
        {
          return AppException(
              error.response?.data['message'] ?? 'empty message');
        }
      case 401:
        {
          _eventNotifier.notify(const UnauthorizedEvent());
          return AppException(error.response?.data['message'] ?? 'no auth');
        }
      case 500:
        {
          return AppException(
              error.response?.data['message'] ?? 'server error');
        }
      default:
        {
          return const AppException.unknown();
        }
    }
  }
}
