import './widgets/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: ProfileFirst(),
            );
          },
        );
      },
    );
  }
}

class ProfileFirst extends StatefulWidget {
  ProfileFirst({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              color: Colors.blue[600],
              height: 40 * SizeConfig.heightMultiplier,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: 10 * SizeConfig.heightMultiplier),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        AvatarGlow(
                          endRadius: 35,
                          duration: Duration(seconds: 2),
                          glowColor: Colors.white24,
                          repeat: true,
                          repeatPauseDuration: Duration(seconds: 2),
                          startDelay: Duration(seconds: 1),
                          child: Material(
                            elevation: 9.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[100],
                              child: Image.asset('assets/images/user.png'),
                              radius: 60.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5 * SizeConfig.widthMultiplier,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "UserName",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 5 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 1 * SizeConfig.heightMultiplier,
                            ),
                            Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 2 * SizeConfig.widthMultiplier,
                                    ),
                                    Text(
                                      "JOB",
                                      style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 2 * SizeConfig.textMultiplier,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 7 * SizeConfig.widthMultiplier,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "LinkedIn",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "LINK",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 1.9 * SizeConfig.textMultiplier,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "TWITTER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "LINK",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 1.9 * SizeConfig.textMultiplier,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white60),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "EDIT PROFILE",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 1.8 * SizeConfig.textMultiplier),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35 * SizeConfig.heightMultiplier),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 1 * SizeConfig.heightMultiplier,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 7.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.blue,
                        elevation: 6.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.email,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "EMAILID@GMAIL.COM",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 7.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.blue,
                        elevation: 6.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.add_call,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "9869123321",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 7.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.blue,
                        elevation: 6.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.work,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "ORGANIZATION NAME",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
