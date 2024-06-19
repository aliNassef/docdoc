part of 'get_all_specialization_cubit.dart';

sealed class GetAllSpecializationState extends Equatable {
  const GetAllSpecializationState();

  @override
  List<Object> get props => [];
}

final class GetAllSpecializationInitial extends GetAllSpecializationState {}

final class GetAllSpecializationLoading extends GetAllSpecializationState {}

final class GetAllSpecializationLoaded extends GetAllSpecializationState {}

final class GetAllSpecializationFailure extends GetAllSpecializationState {}
