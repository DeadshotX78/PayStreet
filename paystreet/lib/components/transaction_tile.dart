import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTile extends StatelessWidget {
  final String amountText;
  final String text, subtitle;
  final IconData icon;
  final Color tileColor, iconColor;
  const TransactionTile({
    super.key,
    required this.amountText,
    required this.text,
    required this.subtitle,
    required this.icon,
    required this.tileColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        tileColor: Colors.white,
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: tileColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        title: Text(
          text,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.poppins(
            letterSpacing: 2,
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          amountText,
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
