import 'package:flutter/material.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_textField.dart';
import 'package:login_ui/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final userameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 50),
            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),
            //Welcome back, you're been missesd
            const Text(
              'Welcome back youve been missed',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            //userName textField
            MyTextField(
              controller: userameController,
              hinText: 'Username',
              obscuredText: false,
            ),

            const SizedBox(height: 10),

            //password textField
            MyTextField(
              controller: passwordController,
              hinText: 'Password',
              obscuredText: true,
            ),

            const SizedBox(height: 10),

            //forgot password?
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            //sign in button
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(height: 50),

            //or continue with
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Or continue with',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
            ),

            const SizedBox(height: 50),

            //google + apple sign in buttons

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Google button
                SquareTile(imagePath: 'lib/images/google.png'),

                SizedBox(width: 25),

                //AppleButton
                SquareTile(imagePath: 'lib/images/apple.png')
              ],
            ),

            const SizedBox(height: 50),

            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a number?',
                    style: TextStyle(color: Colors.grey[700])),
                const SizedBox(width: 4),
                const Text('Resgister now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
