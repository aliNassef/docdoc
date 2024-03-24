import '../api/end_ponits.dart';

class ErrorModel {
  final bool status;
  final String errorMessage;
  final List<dynamic> data;
  final int code;
  ErrorModel({
    required this.status,
    required this.errorMessage,
    required this.data,
    required this.code,
  });
  factory ErrorModel.fromJson(jsonData) {
    return ErrorModel(
      code: jsonData[ApiKey.code],
      status: jsonData[ApiKey.status],
      errorMessage: jsonData[ApiKey.message],
      data: jsonData[ApiKey.data],
    );
  }
}
