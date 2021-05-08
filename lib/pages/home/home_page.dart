import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mamager/data/bloc/home_bloc.dart';
import 'package:state_mamager/data/model/user_model.dart';
import 'package:state_mamager/pages/home/home_state.dart';
import 'package:state_mamager/widgets/user_widget.dart';

class HomePage extends StatefulWidget {
  static const ROUTE_NAME = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TAG = 'HomePage';

  // final _homeBloc = HomeBloc(UserApiService());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _homeBloc.initData();
    context.read<HomeBloc>().initData();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild home");
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
              return UserWidget(userModels[index].id, () {
                // _homeBloc.favorite(userModels[index]);
                context.read<HomeBloc>().favorite(userModels[index]);
              });
            }),
      );
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        actions: [
          IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // _homeBloc.intentFavoritePage(context, _homeBloc);
                context.read<HomeBloc>().intentFavoritePage(context);
              })
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (bloc, state) {
          return state.when((userModels) => _content(userModels),
              loading: () => _loading, error: (_) => _error);
        },
      ),
    );
  }
}
