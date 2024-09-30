import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaghaf_room/core/utils/assets.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';

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
                image: AssetImage(logo)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFFFCE9BD)),
                
               margin: const EdgeInsets.all(5),
               padding: const EdgeInsets.all(15),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Phone Number",
                      style: Styles.comfortaa14,
                    ),
                    //a widget TextFormTempl will be for all text fields
                    //we can pass text and icon
                     const TextFormTempl(textInside: "Enter your Phone number", 
                    iconInside: Icons.phone_in_talk_outlined,showPassword: false,),
                     const SizedBox(height: 10,),
                     const Text(
                      "Name",
                      style: TextStyle(fontSize: 20,),
                    ),
                    //a widget TextFormTempl will be for all text fields
                    const TextFormTempl(textInside: "Enter your Name", 
                    iconInside: Icons.perm_identity_outlined,showPassword: false,),
                    const SizedBox(height: 10,),
                     const Text(
                      "Password",
                      style: TextStyle(fontSize: 20,),
                    ),
                    //a widget TextFormTempl will be for all text fields
                    const TextFormTempl(textInside: "Enter your Password", 
                    iconInside: Icons.lock_outline_rounded,showPassword: true,),

                    const SizedBox(height: 10,),
                     const Text(
                      "Confirm Password",
                      style: TextStyle(fontSize: 20,),
                    ),
                    const TextFormTempl(textInside: "Confirm Password", iconInside: Icons.lock_outline_rounded, showPassword: true),
                  
                  //FloatingActionButton(onPressed: onPressed)

                  const SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      
                                    onPressed: () {
                    //print('Rounded Elevated Button Pressed');
                                    },
                                    style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF20473E),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                                    ),
                                    child: Text('Sign UP'),
                                  ),
                  ),


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
