import 'package:dartz/dartz.dart';
import 'package:docdoc/core/api/api_consumer.dart';
import 'package:docdoc/core/api/end_ponits.dart';
import 'package:docdoc/core/errors/exceptions.dart';
import 'package:docdoc/features/auth/data/models/loged_model/loged_model.dart';
import 'package:docdoc/features/auth/data/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiConsumer api;

  AuthRepoImpl({required this.api});
  @override
  Future<Either<LogedModel, String>> logIn({
    required String email,
    required String pass,
  }) async {
    try {
      final response = await api.post(EndPoint.signIn, data: {
        ApiKey.email: email,
        ApiKey.password: pass,
      });
      var data = LogedModel.fromJson(response);

      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.errorMessage);
    }
  }

  @override
  Future<Either<LogedModel, String>> signUp({
    required String email,
    required String pass,
    required String phone,
    required String name,
    required String gender,
    required String passCon,
  }) async {
    try {
      final response = await api.post(EndPoint.signUp, data: {
        ApiKey.email: email,
        ApiKey.password: pass,
        ApiKey.phone: phone,
        ApiKey.name: ApiKey.name,
        ApiKey.confirmPassword: pass,
        ApiKey.gender: '0',
      });
      var data = LogedModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.errorMessage);
    }
  }
}
