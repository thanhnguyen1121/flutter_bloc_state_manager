import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_mamager/data/model/user_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState(List<UserModel> userModels) = HomeStateData;

  const factory HomeState.loading() = HomeStateLoading;

  const factory HomeState.error(dynamic error) = HomeStateError;
}
