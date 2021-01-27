import 'package:flutter/material.dart';
import 'package:botton_navigation_bar/constants.dart';
import 'package:botton_navigation_bar/parts/text_field_box.dart';


// this class creates a password field box
// different from other text boxes

class PassField extends StatelessWidget {
  final ValueChanged<String> changes; // this is used for detecting changes in a text field
  final TextEditingController control; // this control is used later for confirming passwords
  final Function validate; // input validator function
  final String hint;
  const PassField({
    Key key, 
    this.hint,
    this.control,
    this.changes,
    this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldBox(
      child: TextFormField(
        validator: validate,
        controller: control,
        obscureText: true, // this makes text hidden
        onChanged: changes,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          suffixIcon: Icon(
            Icons.visibility, 
            color: primaryDarkColour,
            ),
        ),
      ),
    );
  }
}