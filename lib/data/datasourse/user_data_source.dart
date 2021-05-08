import 'package:state_mamager/data/model/reponse/list_user_reponse.dart';
import 'package:state_mamager/data/model/user_model.dart';

abstract class UserDataSource {
  Future<ListUserReponse> getUserBuyPage(int page);
}
