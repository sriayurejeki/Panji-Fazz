import 'package:flutter/material.dart';
import 'package:my_app/screens/routes/SecondScreen/payment_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/detail_paket.dart';

class LihatPaketScreen extends StatelessWidget {
  const LihatPaketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Saya',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              height: 35,
              decoration: BoxDecoration(
                color: Color.fromRGBO(4, 73, 153, 1),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                },
                child: Center(
                  child: Text(
                    'PAKET INTERNET',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildPaketCard(
              'Speed',
              '200 GB | 10 MBPS | 30 Hari',
              'Rp. 200.000',
              context,
              const Color(0xFF1976D2),
            ),
            const SizedBox(height: 20),
            _buildPaketCard(
              'Lighting',
              '200 GB | 10 MBPS | 14 Hari',
              'Rp. 150.000',
              context,
              const Color(0xFFFFC107),
            ),
            const SizedBox(height: 20),
            _buildPaketCard(
              'Unlimited',
              'Unlimited | 20 MBPS | 7 Hari',
              'Rp. 75.000',
              context,
              const Color(0xFF9C27B0),
            ),
            const SizedBox(height: 20),
            _buildPaketCard(
              'Gaming',
              '500 GB | 30 MBPS | 30 Hari',
              'Rp. 250.000',
              context,
              const Color(0xFF4CAF50),
            ),
            const SizedBox(height: 20),
            _buildPaketCard(
              'Family',
              '300 GB | 15 MBPS | 21 Hari',
              'Rp. 200.000',
              context,
              const Color(0xFFE91E63),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaketCard(
    String title,
    String detail,
    String price,
    BuildContext context,
    Color accentColor,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.wifi,
              color: accentColor,
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: accentColor,
                fontFamily: 'Montserrat',
              ),
            ),
            subtitle: Text(
              detail,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontFamily: 'Montserrat',
              ),
            ),
            trailing: Text(
              price,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: accentColor,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => detail_paket()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
              child: const Text('Lihat Paket'),
            ),
          ),
        ],
      ),
    );
  }
}