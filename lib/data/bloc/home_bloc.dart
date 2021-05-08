import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mamager/data/datasourse/user_api_service.dart';
import 'package:state_mamager/data/model/reponse/list_user_reponse.dart';
import 'package:state_mamager/data/model/user_model.dart';
import 'package:state_mamager/pages/favorite_page/favorite_page.dart';
import 'package:state_mamager/pages/home/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final UserApiService userApiService;

  HomeBloc(this.userApiService) : super(HomeState.loading());

  Future<void> initData() async {
    // emit(HomeState.loading());
    ListUserReponse listUserReponse = await userApiService.getUserBuyPage(1);
    print("listUserReponse:" + listUserReponse.toJson().toString());
    emit(HomeStateData(listUserReponse.data));
  }

  void favorite(UserModel userModel) {
    state.maybeWhen((userModels) {
      var userChange = UserModel(
          userModel.id,
          userModel.email,
          userModel.firstName,
          userModel.lastName,
          userModel.avatar,
          !userModel.isFavorite);
      int index = userModels.indexOf(userModel);
      userModels.remove(userModel);
      List<UserModel> dataNew = [...userModels];
      dataNew.insert(index, userChange);
      emit(HomeStateData(dataNew));
    }, orElse: () {
      emit(HomeStateError("Error!"));
    });
  }

  void intentFavoritePage(BuildContext context) {
    state.maybeWhen((userModels) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FavoritePage(userModels
                  .where((element) => element.isFavorite == true)
                  .toList())));
    }, orElse: () => emit(HomeState.error("error")));
  }
}
