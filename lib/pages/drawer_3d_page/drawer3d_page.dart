import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'dart:math';

class Drawer3DPage extends StatefulWidget {
  static const ROUTE_NAME = 'Drawer3DPage';

  @override
  _Drawer3DPageState createState() => _Drawer3DPageState();
}

class _Drawer3DPageState extends State<Drawer3DPage> {
  static const TAG = 'Drawer3DPage';
  double value = 0.0;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue[400]!, Colors.blue[800]!],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
            SafeArea(
                child: Container(
                  width: 200,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      DrawerHeader(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                    "https://i.pinimg.com/564x/9e/b8/ab/9eb8abde1d8f2cc005d24f8b22e6dfc9.jpg"),
                              ),
                              Text("name"),
                            ],
                          )),
                      Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                leading: Icon(Icons.home),
                                title: Text("Home"),
                              ),
                              ListTile(
                                leading: Icon(Icons.home),
                                title: Text("Home"),
                              ),
                              ListTile(
                                leading: Icon(Icons.home),
                                title: Text("Home"),
                              ),
                              ListTile(
                                leading: Icon(Icons.home),
                                title: Text("Home"),
                              ),
                            ],
                          ))
                    ],
                  ),
                )),
            TweenAnimationBuilder(
              curve: Curves.bounceIn,
                tween: Tween<double>(begin: 0, end: value),
                duration: Duration(seconds: 3),
                builder: (_, double val, __) {
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..setEntry(0, 3, val * 200)
                      ..rotateY((pi / 6) * val),
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text("Drawe3D demo"),
                      ),
                      body: Center(
                        child: Text("Swipe right to open menu"),
                      ),
                    ),
                  );
                }),
            GestureDetector(
              // onTap: () {
              //   print("ontab");
              //   setState(() {
              //     value == 0 ? value = 1 : value = 0;
              //   });
              // },
              onHorizontalDragUpdate: (val){
                if(val.delta.dx>0){
                  setState(() {
                    value = 1;
                  });
                }else{
                  setState(() {
                    value = 0;
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
