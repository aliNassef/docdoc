import 'package:dartz/dartz.dart';
import 'package:docdoc/features/auth/data/models/loged_model/loged_model.dart';

abstract class AuthRepo {
  Future<Either<LogedModel, String>> logIn({
    required String email,
    required String pass,
  });
  Future<Either<LogedModel, String>> signUp({
    required String email,
    required String pass,
    required String phone,
    required String name,
    required String gender,
    required String passCon,
  });
}
