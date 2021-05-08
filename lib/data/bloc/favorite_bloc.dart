import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mamager/data/bloc/home_bloc.dart';
import 'package:state_mamager/data/model/user_model.dart';
import 'package:state_mamager/pages/favorite_page/favorite_state.dart';

class FavoriteBloc extends Cubit<FavoriteState> {
  FavoriteBloc(this.userModels) : super(FavoriteState.loading());
  List<UserModel> userModels;

  void initData() {
    emit(FavoriteStateData(userModels));
  }

  void favorite(int index, BuildContext context) {
    state.maybeWhen((userModels) {
      var userModelSent = userModels[index];
      var userChange = UserModel(
          userModels[index].id,
          userModels[index].email,
          userModels[index].firstName,
          userModels[index].lastName,
          userModels[index].avatar,
          !userModels[index].isFavorite);
      userModels.removeAt(index);
      List<UserModel> dataNew = [...userModels];
      dataNew.insert(index, userChange);
      emit(FavoriteStateData(dataNew));
      // homeBloc.favorite(userModelSent);
      context.read<HomeBloc>().favorite(userModelSent);
    }, orElse: () {
      emit(FavoriteState.error("Error!"));
    });
  }
}
