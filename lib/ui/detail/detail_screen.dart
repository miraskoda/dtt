import 'package:dtt/api/models/house.dart';
import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/others/primary_padding.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.house, super.key});
  final House house;

  @override
  Widget build(BuildContext context) {
    final imageProvider = Image.network(
      house.image.asDttImage(),
      fit: BoxFit.cover,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: GestureDetector(
                onTap: () {
                  showImageViewer(
                    context,
                    imageProvider.image,
                    swipeDismissible: true,
                    doubleTapZoomable: true,
                    closeButtonColor: AppThemes.brandRedColor,
                  );
                },
                child: Hero(
                  tag: house.id,
                  child: imageProvider,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(AppConstants.kLargeBorderRadius),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryPadding.md(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$${house.price}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          house.zip,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo ligula id quam vestibulum, at aliquam ex mollis.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildDetailIcon(Icons.bed, '${house.bedrooms} Bedrooms'),
                            _buildDetailIcon(Icons.bathtub, '${house.bathrooms} Bathrooms'),
                            _buildDetailIcon(Icons.square_foot, '${house.size} m²'),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Location',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const MapWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget pro ikonky s popisem
  Widget _buildDetailIcon(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.grey[700]),
        const SizedBox(height: 4),
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

class MapWidget extends StatefulWidget {
  const MapWidget({
    super.key,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: FlutterMap(
          options: const MapOptions(
            initialCenter: LatLng(52.370216, 4.895168), // Amsterdam
            initialZoom: 10,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            ),
            const MarkerLayer(
              markers: [
                Marker(
                  width: 80,
                  height: 80,
                  point: LatLng(52.370216, 4.895168),
                  child: Icon(
                    Icons.location_pin,
                    size: 40,
                    color: AppThemes.brandRedColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
