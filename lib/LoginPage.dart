import 'package:flutter/material.dart';
import 'package:flutter_loginpage/components/MyTextField.dart';
import 'package:flutter_loginpage/components/MyButton.dart';
import 'package:flutter_loginpage/components/Square_title.dart';

class LoginPage extends StatelessWidget {
   LoginPage ({super.key});


// text editing controllers, for username and password fields.

final usernameController = TextEditingController();
final passwordController = TextEditingController();

// sign user in method
// and also we created a function call for " Sign In " button, on Tap purpose.
void signUserIn(){}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" Tharun", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              Icon(
                Icons.lock,
              size: 140,
              ),

             

             // text fied like welcoming here
             Text(
              'Welcome!, Please Login below',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 20,
              ),
             ),

            // here i am adding a text fied to enter
            // This is for Input Text Field 
             const SizedBox(height: 25),
              MyTextField(
                controller: usernameController,
                hintText: 'User Name',
                obscureText: false,
              ),

            // This is for output Text Field 
            const SizedBox(height: 10),
             MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
             ),


            // forgot password
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(' Forgot Password', 
                  style: TextStyle(fontSize: 16,
                  color:const Color.fromARGB(255, 86, 22, 17)),
                  ),
                ],
              ),
            ),

            // sign in button
            const SizedBox(height: 25),
            MyButton(
              onTap: signUserIn,
            ),

          

            //or continue with
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                  ),
              
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: const Text('or Continue with'),
                    ),
              
                  Expanded(
                    child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                  ),
              
                   
                ],
              ),
            ),

            // google + apple sign in options
            const SizedBox(height: 25),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                // google image
               SquateTitles(imagepath: 'lib/images/Google.png'),

               const SizedBox(width: 10),

               // Apple image
               SquateTitles(imagepath: 'lib/images/apple.png'),
            ],
            ),




            // not a member? sign up now
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a Member?'),

                const SizedBox(width: 4), // create a gap between two names

                 Text('Register now',
                 style: TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.bold),
                  
                 
                 ),
                 
              ],
            )
      

            ],
          ),
        ),
      
      ),
    );
  }
}