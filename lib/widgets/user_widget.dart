import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mamager/data/bloc/home_bloc.dart';
import 'package:state_mamager/data/model/user_model.dart';
import 'package:state_mamager/pages/home/home_state.dart';

class UserWidget extends StatelessWidget {
  final int userId;
  final callBack;

  UserWidget(this.userId, this.callBack);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final UserModel? user = state.maybeWhen((userModels) {
            return userModels.firstWhere((element) => element.id == userId);
          }, orElse: () => null);

          return Container(
            color: Colors.grey,
            width: double.infinity,
            // height: 100,
            child: Material(
              color: Theme.of(context).backgroundColor,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: ClipOval(
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(user!.avatar),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                user.firstName,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  user.email,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: user.isFavorite ? Colors.red : Colors.black,
                          ),
                          onPressed: callBack
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
