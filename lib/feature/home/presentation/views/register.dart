import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/home/presentation/views/widgets/textFormTempl.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Column(
          
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
      
          children: [
            SizedBox(height: 50,),
            Image(
                height: 200,
                // width: double.infinity,
                image: AssetImage('lib/core/assets/logo_shagaf.png')),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFFFCE9BD)),
                
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 20,),
                    ),
                    TextFormTempl(textInside: "Enter your Phone number", 
                    iconInside: Icons.phone_in_talk_outlined),
                    SizedBox(height: 20,),
                    Text(
                      "Name",
                      style: TextStyle(fontSize: 20,),
                    ),
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
