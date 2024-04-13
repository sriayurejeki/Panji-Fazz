import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/components/asset_image_widget.dart';
import 'package:my_app/screens/routes/SecondScreen/detail_payment.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        backgroundColor: const Color.fromARGB(255, 251, 251, 251),
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
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(24.0),
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
                      const Text(
                        'Paket Speed',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0449B8),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      _buildDetailRow('Internet', '200 GB'),
                      const SizedBox(height: 8.0),
                      _buildDetailRow('TV Berlangganan', 'Tersedia'),
                      const SizedBox(height: 8.0),
                      _buildDetailRow('Masa Aktif', '30 Hari'),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                      const SizedBox(height: 16.0),
                      _buildTotalHarga(),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Payment Method',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      _buildPaymentMethod('assets/images/visa.png', 'Visa'),
                      const SizedBox(height: 8.0),
                      _buildPaymentMethod('assets/images/mastercard.png', 'Mastercard'),
                      const SizedBox(height: 8.0),
                      _buildPaymentMethod('assets/images/paypal.png', 'PayPal'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => detail_payment()),
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
                  'Bayar',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _buildTotalHarga() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Total Harga',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Rp 200.000',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0449B8),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethod(String imagePath, String label) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 40.0,
          height: 40.0,
        ),
        const SizedBox(width: 8.0),
        Text(
          label,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
