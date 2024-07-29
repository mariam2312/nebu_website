
import 'package:flutter/material.dart';

  class TeamPage extends StatefulWidget {
  final String title;
  const TeamPage(
  {super.key, required this.title, });
  static String id = "Founders";

  @override
  State<TeamPage> createState() => _TeamPageState();
  }

  class _TeamPageState extends State<TeamPage> {


    @override
    Widget build(BuildContext context) {

      return
        Container(color: Colors.white,
        height: 700,width: 100,
        child: Image.asset(
          "assets/images/expo3image4.jpeg",
      //   fit: BoxFit.cover,
        )
      );


    }
  }
