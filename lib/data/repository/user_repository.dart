import 'package:state_mamager/data/datasourse/user_api_service.dart';
import 'package:state_mamager/data/datasourse/user_data_source.dart';
import 'package:state_mamager/data/model/reponse/list_user_reponse.dart';

class UserRepository extends UserDataSource {
  final UserApiService apiService;

  UserRepository(this.apiService);

  @override
  Future<ListUserReponse> getUserBuyPage(int page) {
    return apiService.getUserBuyPage(page);
  }
}
