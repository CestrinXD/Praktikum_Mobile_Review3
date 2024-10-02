import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  TextEditingController Controller = TextEditingController();
  String? label, hint;

  CustomTextfield({super.key, required this.Controller, required label, required hint});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool obscure = false;
  
  get obscureText => null;



  @override
  Widget build(BuildContext context) {
    
    if(widget.label == "Password"){
      var obscureText = true;
    }

    return SizedBox(
      width: 400,
      child: TextFormField(
        controller: widget.Controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        obscureText: obscureText,
      ),
    );
  }
}