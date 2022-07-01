import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/screens/default_screen.dart';
import 'package:login_ui/widgets/my_text_field.dart';
import 'package:transition/transition.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  InkWell(
                    child:  const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 18,),
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
              const SizedBox(
                height: 72,
              ),
              const CircleAvatar(
                radius: 130.0,
                backgroundImage: AssetImage("assets/images/avatar.png"),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                height: 65,
              ),
              MyTextField(
                labelText: "Username",
                isPasswordField: false,
              ),
              MyTextField(
                labelText: "Password",
                isPasswordField: true,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          Transition(
                              child: const DefaultScreen(),
                              transitionEffect:
                                  TransitionEffect.RIGHT_TO_LEFT));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColorDark),
                    ),
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Sign in with",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  InkWell(
                      child: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                    size: 48,
                  )),
                  InkWell(
                      child: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                    size: 48,
                  )),
                  InkWell(
                      child: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 48,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
