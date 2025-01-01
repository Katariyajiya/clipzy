import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/text_input_field.dart';
class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});

  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _usernameController =TextEditingController();

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
              const Text("Register",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage('assets/images/defaultImage.png'),
                    backgroundColor: Colors.white,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                        onPressed: (){
                          print("pick imagr");
                        },
                        icon:const Icon(Icons.add_a_photo)),
                  )
                ],
              ),
              SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal:20 ),
                child: TextInputField(controller: _usernameController,
                  icon: Icons.person,
                  labelText: "UserName",),
              ),

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
                    print("Register user");
                  },
                  child: Center(
                    child: Text("SignUp",
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
                  const Text('Already have an account?',style: TextStyle(fontSize: 20),),
                  InkWell(
                    onTap: (){
                      print('navigating user');
                    },
                    child: Text(' Login',style: TextStyle(
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
