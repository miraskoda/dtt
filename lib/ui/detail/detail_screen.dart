import 'dart:async';

import 'package:dtt/api/models/house.dart';
import 'package:dtt/core/bloc/location_bloc/location_bloc.dart';
import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/core/utils/map_launcher.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/generated/l10n.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/others/build_icon_with_text.dart';
import 'package:dtt/ui/others/map_widget.dart';
import 'package:dtt/ui/others/primary_padding.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/foundation.dart';
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
      errorBuilder: (_, __, ___) => Assets.images.house6.image(
        height: AppConstants.kRealEstateImageSize,
        width: AppConstants.kRealEstateImageSize,
        fit: BoxFit.cover,
      ),
    );
    final state = Injector.instance<LocationBloc>().state;
    return Scaffold(
      body: CustomScrollView(
        clipBehavior: Clip.none,
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, AppConstants.kDefaultSpacing),
              child: Transform.translate(
                offset: const Offset(0, 1),
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
            ),
            stretch: true,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: GestureDetector(
                onTap: kIsWeb
                    ? null
                    : () {
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
                          Wrap(
                            spacing: AppConstants.kSmallSpacing,
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
                              if (state.locationData != null)
                                BuildIconWithText(
                                  icon: Assets.icons.icLocation,
                                  text: state.locationData!.getDistance(
                                    latitude: house.latitude,
                                    longitude: house.longitude,
                                  ),
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
                        S.of(context).description,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const PrimarySpacing.gapMd(),
                      Text(
                        house.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const PrimarySpacing.gapLg(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            S.of(context).location,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          InkWell(
                            onTap: () => MapLauncher.launchFromCoordinates(LatLng(house.latitude, house.longitude)),
                            child: Text(
                              S.of(context).openMap,
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
