import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// TEXT INPUT
class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? suffixIconSVG;
  final String? suffixIconPNG;
  final String? labelText;
  final bool editable;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;

  const TextInputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.focusNode,
    this.prefixIcon, // Added parameter for prefix icon
    this.suffixIcon, // Added parameter for suffix icon
    this.suffixIconSVG,
    this.suffixIconPNG,
    this.labelText,
    this.editable = true,
    this.labelStyle,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    Widget? suffixWidget;
    if (suffixIconSVG != null) {
      suffixWidget = buildSvgSuffixIcon(suffixIconSVG!);
    } else if (suffixIconPNG != null) {
      suffixWidget = buildPngSuffixIcon(suffixIconPNG!);
    } else {
      suffixWidget = suffixIcon;
    }

    return TextField(
      focusNode: focusNode,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        filled: true, // Set filled to true
        fillColor: Colors.white, // Set the background color
        enabled: editable,
        hintText: hintText,
        labelText: labelText,
        labelStyle: labelStyle,
        hintStyle: hintStyle,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none),
        prefixIcon: prefixIcon,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: suffixWidget,
        ),
        contentPadding: const EdgeInsets.all(20.0),
      ),
    );
  }

  Widget buildSvgSuffixIcon(String svgAssetPath) {
    return SvgPicture.asset(
      svgAssetPath,
      width: 4,
      height: 4,
    );
  }

  Widget buildPngSuffixIcon(String pngAssetPath) {
    return Image.asset(
      pngAssetPath,
      width: 4,
      height: 4,
    );
  }
}
