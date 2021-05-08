import 'package:dio/dio.dart';
import 'package:state_mamager/data/datasourse/user_data_source.dart';
import 'package:state_mamager/data/model/reponse/list_user_reponse.dart';

class UserApiService extends UserDataSource {
  final Dio dio = Dio(BaseOptions(baseUrl: "https://reqres.in/api/"));

  @override
  Future<ListUserReponse> getUserBuyPage(int page) async {
    Response response = await dio.get("users/?page=$page");
    return ListUserReponse.fromJson(response.data);
  }
}
