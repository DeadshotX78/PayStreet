import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButton extends StatelessWidget {
  final String text;

  final IconData icon;

  final Color boxColor, iconColor;
  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.boxColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 75,
            child: Text(
              softWrap: true,
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
