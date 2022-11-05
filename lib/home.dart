import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            AwesomeDialog(
              context: context,
              transitionAnimationDuration: Duration(seconds: 1),
              dialogType: DialogType.success,
              animType: AnimType.scale,
              title: "This is Title",
              desc: "This is description",
              barrierColor: Colors.deepPurple,
              dialogBackgroundColor: Colors.pinkAccent,
              btnCancelOnPress: () {},
              btnOkOnPress: () {},
              btnOkColor: Colors.blue,
            ).show();
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
