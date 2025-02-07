import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WidgetInputField extends StatelessWidget {

  final String label;
  final IconData icon;

  const WidgetInputField({super.key, required this.label, required this.icon});

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
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            label: Text(label, style: GoogleFonts.poppins(color: const Color(0xFFB1B1B1))),
            border: InputBorder.none,
            prefixIcon: Icon(icon),
          ),
        ),
      ),
    );
  }
}
