import 'package:dartz/dartz.dart';
import 'package:docdoc/features/home/data/models/specialization_model/specialization_model.dart';

abstract class HomeRepo {
  Future<Either<SpecializationModel, String>> getAllSpecialization();
}
