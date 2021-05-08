import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_mamager/data/model/user_model.dart';
part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState(List<UserModel> userModels) = FavoriteStateData;
  const factory FavoriteState.loading() = FavoriteStateLoading;
  const factory FavoriteState.error(dynamic error) = FavoriteStateError;
}