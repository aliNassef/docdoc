import 'package:equatable/equatable.dart';

import 'datum.dart';

class SpecializationModel extends Equatable {
  final String? message;
  final List<Datum>? data;
  final bool? status;
  final int? code;

  const SpecializationModel({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory SpecializationModel.fromJson(Map<String, dynamic> json) {
    return SpecializationModel(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      code: json['code'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
        'status': status,
        'code': code,
      };

  @override
  List<Object?> get props => [message, data, status, code];
}
