import 'package:dtt/api/models/house.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final House house;

  const DetailScreen({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DTT REAL ESTATE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              house.image.asDttImage(),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cena
                  Text(
                    '\$${house.price.toString()}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Adresa
                  Text(
                    house.zip,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Popis
                  Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo ligula id quam vestibulum, at aliquam ex mollis.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Detaily
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDetailIcon(Icons.bed, '${house.bedrooms} Bedrooms'),
                      _buildDetailIcon(Icons.bathtub, '${house.bathrooms} Bathrooms'),
                      _buildDetailIcon(Icons.square_foot, '${house.size} m²'),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Mapa
                  Text(
                    'Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Container(
                  //   height: 200,
                  //   child: GoogleMap(
                  //     initialCameraPosition: CameraPosition(
                  //       target: LatLng(
                  //         house['latitude'] as double,
                  //         house['longitude'] as double,
                  //       ),
                  //       zoom: 14.0,
                  //     ),
                  //     markers: {
                  //       Marker(
                  //         markerId: MarkerId('houseLocation'),
                  //         position: LatLng(
                  //           house['latitude'] as double,
                  //           house['longitude'] as double,
                  //         ),
                  //       ),
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget pro ikonky s popisem
  Widget _buildDetailIcon(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.grey[700]),
        SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
