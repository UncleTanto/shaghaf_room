import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryGreen,
      body: Center(
        child: IconButton(
          icon: Icon(Icons.login,size: 50,color: Colors.deepOrange,),
          onPressed: () => context.go("/register"),
        ),
      ),
    );
  }
}
