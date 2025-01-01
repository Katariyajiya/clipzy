import 'package:clipzy/views/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:clipzy/constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clipzy",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color:buttonColor,
              ),),
            const Text("Login",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal:20 ),
              child: TextInputField(controller: _emailController,
                  icon: Icons.email,
                  labelText: "Email",),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal:20 ),
              child: TextInputField(controller: _passwordController,
                icon: Icons.lock,
                labelText: "Password",
              isObscure: true,),
            ),
            const SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(5),),
              ),
              child: InkWell(
                onTap: (){
                  print("login user");
                },
                child: Center(
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?',style: TextStyle(fontSize: 20),),
                InkWell(
                  onTap: (){
                    print('navigating user');
                  },
                  child: Text('Register',style: TextStyle(
                    fontSize: 20,
                    color: buttonColor,
                  ),),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
