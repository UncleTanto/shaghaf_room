import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/home/presentation/views/widgets/textFormTempl.dart';

//this class is still under implementation 
// I just added some code and one widget textFormImpli
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Column(
          children: [
            const SizedBox(height: 50,),
            const Image(
                height: 200,
                width: double.infinity,
                image: AssetImage('lib/core/assets/logo_shagaf.png')),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFFFCE9BD)),
                
               margin: const EdgeInsets.all(20),
               padding: const EdgeInsets.all(15),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 20,),
                    ),
                    //a widget TextFormTempl will be for all text fields
                    //we can pass text and icon
                     TextFormTempl(textInside: "Enter your Phone number", 
                    iconInside: Icons.phone_in_talk_outlined),
                     SizedBox(height: 20,),
                     Text(
                      "Name",
                      style: TextStyle(fontSize: 20,),
                    ),
                    //a widget TextFormTempl will be for all text fields
                    TextFormTempl(textInside: "Enter your Name", 
                    iconInside: Icons.perm_identity_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
