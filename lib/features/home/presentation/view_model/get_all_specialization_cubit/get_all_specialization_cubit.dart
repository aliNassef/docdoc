import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_all_specialization_state.dart';

class GetAllSpecializationCubit extends Cubit<GetAllSpecializationState> {
  GetAllSpecializationCubit(this.homeRepo)
      : super(GetAllSpecializationInitial());
  final HomeRepo homeRepo;

  getAllSpecialization() async {
    emit(GetAllSpecializationLoading());
    var data = await homeRepo.getAllSpecialization();
    data.fold(
      (l) => emit(GetAllSpecializationLoaded()),
      (r) => emit(GetAllSpecializationFailure()),
    );
  }
}
