import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTextField extends StatefulWidget {
  MyTextField(
      {Key? key, required this.labelText, required this.isPasswordField})
      : super(key: key);

  String labelText;
  bool isPasswordField;

  @override
  State<StatefulWidget> createState() {
    return _MyTextField();
  }
}

class _MyTextField extends State<MyTextField> {
  bool obscureText = false;

  @override
  void initState() {
    if (widget.isPasswordField) {
      obscureText = true;
    } else {
      obscureText = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        obscureText: obscureText,
        style: const TextStyle(fontSize: 20,),
        decoration: InputDecoration(
            floatingLabelStyle: TextStyle(color: Theme.of(context).primaryColorDark),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Theme.of(context).primaryColorDark)
            ),
            labelStyle: TextStyle(color: Colors.grey[500]),
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            filled: true,
            labelText: widget.labelText,
            suffixIcon: widget.isPasswordField
                ? InkWell(
                    onTap: () {
                      if (mounted) {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      }
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ FaIcon(obscureText
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash),],
                    ),
                  )
                : const SizedBox()),
      ),
    );
  }
}
