import 'package:dtt/api/models/house.dart';
import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/core/router/app_router.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/ui/others/build_icon_with_text.dart';
import 'package:dtt/ui/others/primary_padding.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:location/location.dart';

class HouseItem extends StatelessWidget {
  const HouseItem(this.house, this.locationData, {super.key});
  final House house;
  final LocationData? locationData;

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding.sm(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.kNormalBorderRadius),
        ),
        child: InkWell(
          onTap: () => context.push(AppRouter.detailPath, extra: house),
          child: PrimaryPadding.md(
            child: SizedBox(
              height: AppConstants.kRealEstateImageSize,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppConstants.kNormalBorderRadius),
                    ),
                    child: Hero(
                      tag: house.id,
                      child: Image.network(
                        house.image.asDttImage(),
                        width: AppConstants.kRealEstateImageSize,
                        height: AppConstants.kRealEstateImageSize,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Assets.images.house6.image(
                          height: AppConstants.kRealEstateImageSize,
                          width: AppConstants.kRealEstateImageSize,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: PrimaryPadding.md(
                      top: false,
                      bottom: false,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            house.price.asDTTPrice(),
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          const PrimarySpacing.gapXxs(),
                          Text(
                            '${house.zip} - ${house.city}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const Spacer(),
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
                              if (locationData != null)
                                BuildIconWithText(
                                  icon: Assets.icons.icLocation,
                                  text: locationData!.getDistance(
                                    latitude: house.latitude,
                                    longitude: house.longitude,
                                  ),
                                ),
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
        ),
      ),
    );
  }
}
