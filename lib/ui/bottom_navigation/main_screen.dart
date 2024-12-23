import 'package:dtt/api/models/house.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  // Seznam mockovaných nemovitostí (nahradíš API daty)
  final List<Map<String, dynamic>> houses = [
    {
      'image': 'https://via.placeholder.com/150', // Nahraď URL obrázkem z API
      'price': 45000,
      'address': '101HK Raamgracht',
      'bedrooms': 1,
      'bathrooms': 1,
      'size': 46,
      'distance': 5.6,
    },
    {
      'image': 'https://via.placeholder.com/150',
      'price': 50000,
      'address': '101HK Prinsengracht',
      'bedrooms': 2,
      'bathrooms': 1,
      'size': 60,
      'distance': 3.2,
    },
    // Přidej další nemovitosti...
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DTT REAL ESTATE'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: houses.length,
        itemBuilder: (context, index) {
          final house = houses[index];
          return GestureDetector(
            onTap: () {
              context.go(
                '/main/detail',
                extra: House(
                    id: 1,
                    image: 'image',
                    price: 5,
                    bedrooms: 5,
                    bathrooms: 5,
                    size: 2,
                    description: 'description',
                    zip: '555',
                    city: 'city',
                    latitude: 555,
                    longitude: 555,
                    createdDate: DateTime.now()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Obrázek nemovitosti
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      child: Image.network(
                        "${house['image']}",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Cena
                            Text(
                              '\$${house['price'].toString()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            // Adresa
                            Text(
                              "${house['address']}",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 4),
                            // Detaily
                            Row(
                              children: [
                                Icon(Icons.bed, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                Text('${house['bedrooms']}'),
                                SizedBox(width: 8),
                                Icon(Icons.bathtub, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                Text('${house['bathrooms']}'),
                                SizedBox(width: 8),
                                Icon(Icons.square_foot, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                Text('${house['size']} m²'),
                                SizedBox(width: 8),
                                Icon(Icons.location_on, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                Text('${house['distance']} km'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
