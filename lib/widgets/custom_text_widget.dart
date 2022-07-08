import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.keyboardType,
    required this.controller,
    required this.hintText,
    this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 8),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12 / 1.5,
              vertical: 16 / 2,
            ),
            child: SizedBox(
              height: 48,
              width: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Icon(icon),
              ),
            ),
          ),
        ),
        // validator: (val) {
        //   if (val == null || val.isEmpty) {
        //     return 'Enter your $hintText';
        //   }
        //   return null;
        // },
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(16.0),
  ),
  borderSide: BorderSide.none,
);
