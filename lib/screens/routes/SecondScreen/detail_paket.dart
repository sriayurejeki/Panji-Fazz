import 'package:flutter/material.dart';
import 'package:my_app/screens/routes/SecondScreen/payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paket Speed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const detail_paket(),
    );
  }
}

class detail_paket extends StatelessWidget {
  const detail_paket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speed'),
        backgroundColor: const Color(0xFFF9FCFF),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(4, 73, 153, 1),
              Color.fromRGBO(4, 73, 153, 1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildPaketDetail(),
              const SizedBox(height: 24.0),
              _buildBeliButton(context), 
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaketDetail() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPaketHeader(),
          const SizedBox(height: 16.0),
          _buildPaketDetails(),
          const SizedBox(height: 16.0),
          _buildInformasiTambahan(),
          const SizedBox(height: 16.0),
          _buildTotalHarga(),
        ],
      ),
    );
  }

  Widget _buildPaketHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          '200 GB',
          style: TextStyle(
            color: Color(0xFF0449B8),
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.wifi,
          color: Color(0xFF0449B8),
          size: 32.0,
        ),
      ],
    );
  }

  Widget _buildPaketDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Masa Aktif: 30 Hari',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 8.0),
        const Text(
          'Rincian Paket:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        _buildDetailItem(Icons.signal_wifi_4_bar, 'Internet: 200 GB'),
        const SizedBox(height: 8.0),
        _buildDetailItem(Icons.tv, 'TV Berlangganan: Tersedia'),
      ],
    );
  }

  Widget _buildDetailItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFF0449B8),
        ),
        const SizedBox(width: 8.0),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget _buildInformasiTambahan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Informasi tambahan:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        const Text(
          'Deskripsi Paket:',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 8.0),
        const Text(
          '(Paket internet 30 GB dengan kecepatan 10 Mbps dan tv berlangganan selama 30 hari)',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }

  Widget _buildTotalHarga() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Total Harga:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Rp 200.000',
          style: TextStyle(
            color: Color(0xFF0449B8),
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildBeliButton(BuildContext context) { // Pass BuildContext
    return ElevatedButton(
      onPressed: () {
        // Aksi ketika tombol "Beli" ditekan
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentScreen()), // Navigate to BeliPaketPage
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFD700),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const Text(
        'Beli',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

class BeliPaketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beli Paket'),
      ),
      body: Center(
        child: const Text('Ini Halaman Beli Paket'),
      ),
    );
  }
}
