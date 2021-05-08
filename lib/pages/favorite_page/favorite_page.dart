import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mamager/data/bloc/favorite_bloc.dart';
import 'package:state_mamager/data/bloc/home_bloc.dart';
import 'package:state_mamager/data/model/user_model.dart';
import 'package:state_mamager/pages/favorite_page/favorite_state.dart';
import 'package:state_mamager/widgets/user_widget.dart';

class FavoritePage extends StatefulWidget {
  List<UserModel> userModels;

  FavoritePage(this.userModels);

  static const ROUTE_NAME = 'FavoritePage';

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  static const TAG = 'FavoritePage';
  late final FavoriteBloc _favoriteBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _favoriteBloc = FavoriteBloc(widget.userModels);
    _favoriteBloc.initData();
  }

  @override
  Widget build(BuildContext context) {
    var _loading = Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(),
      ),
    );
    var _error = Container(alignment: Alignment.center, child: Text("Error!"));
    var _content = (List<UserModel> userModels) {
      return Container(
        child: ListView.builder(
            itemCount: userModels.length,
            itemBuilder: (context, index) {
              return UserWidget(userModels[index], () {
                _favoriteBloc.favorite(index,context);
              });
            }),
      );
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: BlocProvider.value(
        value: _favoriteBloc,
        child: BlocBuilder<FavoriteBloc, FavoriteState>(
          builder: (bloc, state) {
            return state.when((userModels) => _content(userModels), loading: () => _loading,
                error: (_) => _error);
          },
        ),
      ),
    );
  }
}