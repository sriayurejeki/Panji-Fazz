import 'package:flutter/material.dart';

class NotifikasiPage extends StatefulWidget {
  @override
  _NotifikasiPageState createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifikasi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(4, 73, 153, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(236, 237, 238, 1),
              Colors.white,
            ],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: 20),
            _buildNotifikasiCard(
              Icons.notification_important,
              'Paket Unlimited telah berakhir',
              'Masa aktif paket Unlimited Anda telah berakhir pada 30 April 2023. Mohon untuk segera memperpanjang paket atau membeli paket baru.',
            ),
            SizedBox(height: 20),
            _buildNotifikasiCard(
              Icons.data_usage,
              'Penggunaan kuota melebihi batas',
              'Kuota internet Anda telah mencapai batas maksimum. Untuk kenyamanan browsing, mohon segera membeli kuota tambahan.',
            ),
            SizedBox(height: 20),
            _buildNotifikasiCard(
              Icons.signal_wifi_off,
              'Gangguan jaringan di area Anda',
              'Saat ini sedang terjadi gangguan jaringan di area Anda. Tim teknisi kami sedang berupaya untuk mengatasi masalah ini. Mohon bersabar.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotifikasiCard(IconData icon, String title, String content) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 32,
            color: Color.fromRGBO(4, 73, 153, 1),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(4, 73, 153, 1),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}