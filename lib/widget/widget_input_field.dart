import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WidgetInputField extends StatelessWidget {

  final TextEditingController controller;
  final String label;
  final IconData icon;
  final String? errorText;
  final TextInputType keyboardType;

  const WidgetInputField(
      {super.key, required this.controller, required this.label, required this.icon, required this.errorText, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Color(0xFFE5E5E5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            label: Text(label,
                style: GoogleFonts.poppins(color: const Color(0xFFB1B1B1))),
            border: InputBorder.none,
            prefixIcon: Icon(icon),
            errorText:  errorText,
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
