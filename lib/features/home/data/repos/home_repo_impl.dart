import 'package:dartz/dartz.dart';
import 'package:docdoc/core/api/api_consumer.dart';
import 'package:docdoc/core/api/end_ponits.dart';
import 'package:docdoc/core/errors/exceptions.dart';
import 'package:docdoc/features/home/data/models/specialization_model/specialization_model.dart';
import 'package:docdoc/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiConsumer api;

  HomeRepoImpl({required this.api});
  @override
  Future<Either<SpecializationModel, String>> getAllSpecialization() async {
    try {
      var response = await api.get(EndPoint.getAllSpecialization);
      var data = SpecializationModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.errorMessage);
    }
  }
}
