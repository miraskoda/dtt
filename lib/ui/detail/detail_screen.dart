import 'dart:async';

import 'package:dtt/api/models/house.dart';
import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/core/utils/map_launcher.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/others/build_icon_with_text.dart';
import 'package:dtt/ui/others/map_widget.dart';
import 'package:dtt/ui/others/primary_padding.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
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
        clipBehavior: Clip.none,
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, AppConstants.kDefaultSpacing),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppConstants.kLargeBorderRadius),
                  ),
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: AppConstants.kDefaultSpacing,
                ),
              ),
            ),
            stretch: true,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: GestureDetector(
                onTap: () {
                  unawaited(
                    showImageViewer(
                      context,
                      imageProvider.image,
                      swipeDismissible: true,
                      doubleTapZoomable: true,
                      closeButtonColor: AppThemes.brandRedColor,
                    ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryPadding.md(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            house.price.asDTTPrice(),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  BuildIconWithText(
                                    icon: Assets.icons.icBed,
                                    text: '${house.bedrooms}',
                                  ),
                                  BuildIconWithText(
                                    icon: Assets.icons.icBath,
                                    text: '${house.bathrooms}',
                                  ),
                                  BuildIconWithText(
                                    icon: Assets.icons.icLayers,
                                    text: '${house.size} m²',
                                  ),
                                  BuildIconWithText(
                                    icon: Assets.icons.icLocation,
                                    text: '100 km',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const PrimarySpacing.gapMd(),
                      Text(
                        '${house.zip} - ${house.city}',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const PrimarySpacing.gapLg(),
                      Text(
                        'Description',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const PrimarySpacing.gapMd(),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo ligula id quam vestibulum, at aliquam ex mollis.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const PrimarySpacing.gapLg(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          InkWell(
                            onTap: () => MapLauncher.launchFromCoordinates(LatLng(house.latitude, house.longitude)),
                            child: Text(
                              'Open in maps',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      const PrimarySpacing.gapMd(),
                      MapWidget(
                        coordinates: LatLng(house.latitude, house.longitude),
                      ),
                    ],
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
