import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/screens/default_screen.dart';
import 'package:login_ui/widgets/my_drop_down.dart';
import 'package:login_ui/widgets/my_text_field.dart';
import 'package:transition/transition.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  List<DropdownMenuItem<String>> countries = [
    const DropdownMenuItem<String>(
      value: ("GT"),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Guatemala", style: TextStyle(color: Colors.black)),
      ),
    ),
    const DropdownMenuItem<String>(
      value: ("CR"),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Costa Rica", style: TextStyle(color: Colors.black)),
      ),
    ),
    const DropdownMenuItem<String>(
      value: ("PA"),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Panama", style: TextStyle(color: Colors.black)),
      ),
    ),
    const DropdownMenuItem<String>(
      value: ("RD"),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child:
            Text("Republica Dominicana", style: TextStyle(color: Colors.black)),
      ),
    ),
    const DropdownMenuItem<String>(
      value: ("SV"),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("El Salvador", style: TextStyle(color: Colors.black)),
      ),
    ),
    const DropdownMenuItem<String>(
      value: ("HN"),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Honduras", style: TextStyle(color: Colors.black)),
      ),
    ),
  ];

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
                height: 30,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                labelText: "Email",
                isPasswordField: false,
              ),
              MyTextField(
                labelText: "Username",
                isPasswordField: false,
              ),
              MyDropDown(labelText: "Country", items: countries),
              MyTextField(
                labelText: "Password",
                isPasswordField: true,
              ),
              MyTextField(
                labelText: "Confirm Password",
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
                      AwesomeDialog(
                              context: context,
                              dialogType: DialogType.SUCCES,
                              title: "Congratulations",
                              desc: "Your account has been created succesfully")
                          .show()
                          .then((_) {
                        Navigator.push(
                            context,
                            Transition(
                                child: const DefaultScreen(),
                                transitionEffect:
                                    TransitionEffect.RIGHT_TO_LEFT));
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColorDark),
                    ),
                    child: const Text(
                      "Sign Up",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Sign up with",
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
