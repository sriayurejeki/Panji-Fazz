import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/components/asset_image_widget.dart';

class detail_payment extends StatelessWidget {
const detail_payment({ Key? key }) : super(key: key);

   @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Detail Payment'),
       backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
             Container(
               padding: const EdgeInsets.all(24.0),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(16.0),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black.withOpacity(0.2),
                     spreadRadius: 2,
                     blurRadius: 5,
                     offset: const Offset(0, 3),
                   ),
                 ],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text(
                     'Detail Payment',
                     style: TextStyle(
                       fontSize: 24.0,
                       fontWeight: FontWeight.bold,
                       color: Color(0xFF0449B8),
                     ),
                   ),
                   const SizedBox(height: 16.0),
                   _buildDetailRow('Batas Pembayaran', '15 April 2023'),
                   const SizedBox(height: 8.0),
                   _buildDetailRow('Jumlah Tagihan', 'Rp 200.000'),
                   const SizedBox(height: 8.0),
                   _buildDetailRow('Nomor Tagihan', 'SCAF923K3J3D4K'),
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
                 ],
               ),
             ),
             const SizedBox(height: 24.0),
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