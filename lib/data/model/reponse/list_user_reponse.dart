import 'package:json_annotation/json_annotation.dart';
import 'package:state_mamager/data/model/user_model.dart';

part 'list_user_reponse.g.dart';

@JsonSerializable()
class ListUserReponse {
  int page;
  @JsonKey(name: "per_page")
  int perPage;
  int total;
  @JsonKey(name: "total_pages")
  int totalPage;
  List<UserModel> data;

  ListUserReponse(
      this.page, this.perPage, this.total, this.totalPage, this.data);

  factory ListUserReponse.fromJson(Map<String, dynamic> json) =>
      _$ListUserReponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListUserReponseToJson(this);
}
