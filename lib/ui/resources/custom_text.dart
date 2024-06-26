import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String? labeltext;
  final Widget? suffix;
  final Icon? prefix;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool? obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? enable;
  final int? maxlines;
  final double? border;
  final Color? colorborder;
  final String? hint;

  const CustomText(
      {super.key,
      this.labeltext,
      this.suffix,
      this.prefix,
      this.controller,
      this.inputType,
      this.obscureText,
      this.onChanged,
      this.validator,
      this.maxlines,
      this.border,
      this.colorborder,
      this.enable,
      this.hint});

  @override
  State<CustomText> createState() => CustomTextState();
}

class CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enable,
      maxLines: widget.maxlines ?? 1,
      validator: widget.validator,
      obscureText: widget.obscureText ?? false,
      keyboardType: widget.inputType,
      controller: widget.controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.labeltext,
          suffixIcon: widget.suffix,
          prefixIcon: widget.prefix,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: widget.colorborder ?? Colors.transparent, width: 0.0),
              borderRadius:
                  BorderRadius.all(Radius.circular(widget.border ?? 100)))),
    );
  }
}
