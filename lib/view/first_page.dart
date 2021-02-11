import 'package:flutter/material.dart';
import '../model/profile_tags.dart';
import '../controller/body_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var halfOfScreen = MediaQuery.of(context).size.width / 4;
    var tags = profileTags.map((e) => Chip(label: Text(e))).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile First Page'),
      ),
      body: BodyController(halfOfScreen: halfOfScreen, tags: tags),
    );
  }
}
