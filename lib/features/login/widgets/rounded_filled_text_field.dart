import 'package:bamboukreyol/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class RoundedFilledTextField extends StatelessWidget {
  const RoundedFilledTextField(this.width, {Key? key, this.controller}) : super(key: key);

  final double width;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        style: context.t.bodyLarge?.copyWith(color: Colors.black, fontSize: 16.0),
        decoration: InputDecoration(
            filled: true,
            isDense: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
