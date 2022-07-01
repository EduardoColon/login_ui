import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  MyDropDown({Key? key, required this.labelText, required this.items})
      : super(key: key);

  String labelText;
  List<DropdownMenuItem<String>> items;

  @override
  State<StatefulWidget> createState() {
    return _MyDropDownState();
  }
}

class _MyDropDownState extends State<MyDropDown> {
  bool obscureText = false;
  TextEditingController controller = TextEditingController();
  String? value = null;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: DropdownButton<String>(
          style: const TextStyle(
            fontSize: 20,
          ),
          items: widget.items,
          hint: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.labelText,
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),
          borderRadius: BorderRadius.circular(10),
          isExpanded: true,
          value: value,
          underline: const SizedBox(),
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
      ),
    );
  }
}
