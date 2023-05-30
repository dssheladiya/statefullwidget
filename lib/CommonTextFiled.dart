import 'package:flutter/material.dart';

class CommonTextFiled extends StatefulWidget {
  const CommonTextFiled(
      {Key? key,
      required this.obscure,
      this.keyborad,
      this.hint,
      this.prefixicon,
      this.cursor})
      : super(key: key);

  final obscure;
  final keyborad;
  final hint;
  final prefixicon;
  final cursor;

  @override
  State<CommonTextFiled> createState() => _CommonTextFiledState();
}

class _CommonTextFiledState extends State<CommonTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscure,
      cursorColor: widget.cursor,
      keyboardType: widget.keyborad,
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: widget.prefixicon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
