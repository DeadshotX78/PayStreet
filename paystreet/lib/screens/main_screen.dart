import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paystreet/components/account_tile.dart';
import 'package:paystreet/components/action_button.dart';
import 'package:paystreet/components/transaction_tile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
          ),
          child: const Icon(Icons.person),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Esther Bukola",
              style: GoogleFonts.poppins(
                fontSize: 13,
              ),
            ),
            Text(
              "Good Evening",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_2_outlined,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            //account balance
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    TextButton.icon(
                      iconAlignment: IconAlignment.end,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                        size: 12,
                      ),
                      label: Text(
                        "Current Balance",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Text(
                      '\$7,860.00',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AccountTile(
                          text: "Fund Transfer",
                          icon: Icons.file_download_outlined,
                        ),
                        SizedBox(width: 10),
                        AccountTile(
                          text: "Internal Transfer",
                          icon: Icons.replay,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //actions
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bill Payments",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(
                        text: "Buy Airtime",
                        icon: Icons.trending_up_rounded,
                        boxColor: Colors.blue.shade200,
                        iconColor: Colors.blue.shade900,
                      ),
                      ActionButton(
                        text: "Buy Data",
                        icon: Icons.podcasts_rounded,
                        boxColor: Colors.green.shade200,
                        iconColor: Colors.green.shade800,
                      ),
                      ActionButton(
                        text: "Cable TV",
                        icon: Icons.tv_rounded,
                        boxColor: Colors.blue.shade200,
                        iconColor: Colors.blue.shade900,
                      ),
                      ActionButton(
                        text: "Electricity",
                        icon: Icons.wb_sunny_outlined,
                        boxColor: Colors.pink.shade200,
                        iconColor: Colors.pink,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(
                        text: "Become an Agent",
                        icon: Icons.support_agent_rounded,
                        boxColor: Colors.orange.shade200,
                        iconColor: Colors.orange,
                      ),
                      ActionButton(
                        text: "Education Payment",
                        icon: Icons.school_rounded,
                        boxColor: Colors.red.shade200,
                        iconColor: Colors.red.shade800,
                      ),
                      ActionButton(
                        text: "Withdraw Funds",
                        icon: Icons.sports_football_rounded,
                        boxColor: Colors.purple.shade200,
                        iconColor: Colors.purple.shade900,
                      ),
                      ActionButton(
                        text: "Ask4 Pay",
                        icon: Icons.local_drink_rounded,
                        boxColor: Colors.lightGreen.shade200,
                        iconColor: Colors.lightGreen.shade800,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            //transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transactions",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TransactionTile(
              amountText: "-\$500.00",
              text: "Shopping",
              subtitle: "12 May 2023, 09:00",
              icon: Icons.shopping_bag_outlined,
              tileColor: Colors.purple.shade200,
              iconColor: Colors.purple,
            ),
            const TransactionTile(
              amountText: "+\$2,800.00",
              text: "Transfer",
              subtitle: "10 May 2023, 10:45",
              icon: Icons.compare_arrows_rounded,
              tileColor: Colors.grey,
              iconColor: Colors.black,
            ),

            TransactionTile(
              amountText: "-\$170.00",
              text: "Concert Ticket",
              subtitle: "9 May 2023, 19:30",
              icon: Icons.receipt_outlined,
              tileColor: Colors.green.shade200,
              iconColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
