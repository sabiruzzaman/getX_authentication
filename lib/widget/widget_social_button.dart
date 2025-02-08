import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetSocialButton extends StatelessWidget {
  final String title;
  final String image;
  final double width;
  final VoidCallback onTap;

  const WidgetSocialButton({
    super.key,
    required this.title,
    required this.image,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color(0xFFE5E5E5),
          ),
        ),
        child: Container(
          height: 65,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Image(
                      image: AssetImage(image),
                      height: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style:
                          GoogleFonts.poppins(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
