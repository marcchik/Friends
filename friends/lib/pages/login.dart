import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                  height: 500.0,
                  decoration: const BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.fromLTRB(0, 50.0, 15.0, 15.0),
                  height: 160.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "_weather.name",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "_weather.weather.first.description",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "100°",
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60,
                                    color: Colors.white),
                              ),
                              Container(
                                margin: const EdgeInsets.all(0),
                                child: Text(
                                  "Feels like 10°",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
