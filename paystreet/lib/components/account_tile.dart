import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountTile extends StatelessWidget {
  final String text;
  final IconData icon;
  const AccountTile({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.45,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade800,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
