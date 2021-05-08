import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mamager/data/bloc/home_bloc.dart';
import 'package:state_mamager/data/datasourse/user_api_service.dart';
import 'package:state_mamager/pages/drawer_3d_page/drawer3d_page.dart';
import 'package:state_mamager/pages/home/home_page.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(UserApiService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Drawer3DPage(),
        home: HomePage(),
      ),
    );
  }
}
