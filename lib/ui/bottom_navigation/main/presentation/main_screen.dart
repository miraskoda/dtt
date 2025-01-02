import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/core/router/app_router.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/generated/l10n.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';
import 'package:dtt/ui/error/error_screen.dart';
import 'package:dtt/ui/others/empty_screen.dart';
import 'package:dtt/ui/others/primary_padding.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Injector.instance<MainScreenBloc>()..add(MainScreenEvent.init()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).appBarTitle,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        body: BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (context, state) => NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 40,
                  elevation: 1,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.none,
                    background: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppConstants.kDefaultSpacing, vertical: AppConstants.kSmallSpacing),
                      child: SizedBox(
                        height: 30,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppThemes.brandDarkGray,
                              borderRadius: BorderRadius.circular(AppConstants.kNormalBorderRadius)),
                          child: SizedBox(
                            height: AppConstants.kLargeSpacing,
                            child: TextFormField(
                              onChanged: (String str) =>
                                  Injector.instance<MainScreenBloc>().add(MainScreenEvent.search(phrase: str)),
                              decoration: InputDecoration(
                                isDense: true,
                                suffixIcon: Assets.icons.icSearch.svg(),
                                hintText: S.of(context).search,
                                contentPadding: const EdgeInsets.symmetric(vertical: AppConstants.kContentPadding)
                                    .copyWith(left: AppConstants.kContentPadding),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: Builder(builder: (context) {
              if (state.isLoading) return Center(child: CircularProgressIndicator());
              if (state.isError) return ErrorScreen(state.apiErrorString ?? S.of(context).error);
              if (state.filteredHouses.isEmpty) return EmptyScreen();
              return ListView.builder(
                itemCount: state.filteredHouses.length,
                itemBuilder: (_, index) {
                  final house = state.filteredHouses[index];
                  return PrimaryPadding.sm(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppConstants.kNormalBorderRadius),
                      ),
                      child: InkWell(
                        onTap: () {
                          context.push(AppRouter.detailPath, extra: house);
                        },
                        child: PrimaryPadding.md(
                          child: SizedBox(
                            height: AppConstants.kRealEstateImageSize,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(AppConstants.kNormalBorderRadius),
                                  ),
                                  child: Image.network(
                                    house.image.asDttImage(),
                                    width: AppConstants.kRealEstateImageSize,
                                    height: AppConstants.kRealEstateImageSize,
                                    fit: BoxFit.cover,
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
                                          '\$${house.price.toString()}',
                                          style: Theme.of(context).textTheme.displaySmall,
                                        ),
                                        PrimarySpacing.gapXxs(),
                                        Text(
                                          house.city,
                                          style: Theme.of(context).textTheme.bodyMedium,
                                        ),
                                        Spacer(),
                                        Row(
                                          children: [
                                            _buildIconWithText(
                                              Assets.icons.icBed,
                                              '${house.bedrooms}',
                                              context,
                                            ),
                                            _buildIconWithText(
                                              Assets.icons.icBath,
                                              '${house.bathrooms}',
                                              context,
                                            ),
                                            _buildIconWithText(
                                              Assets.icons.icLayers,
                                              '${house.size} m²',
                                              context,
                                            ),
                                            _buildIconWithText(
                                              Assets.icons.icLocation,
                                              '100 km',
                                              context,
                                            ),
                                          ],
                                        )
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
                },
              );
            }),
          ),
        ),
      ),
    );
  }

  ColorFilter _iconColorFilter(BuildContext context) {
    return ColorFilter.mode(
      Theme.of(context).iconTheme.color!.withAlpha(128),
      BlendMode.srcIn,
    );
  }

  Widget _buildIconWithText(SvgGenImage icon, String text, BuildContext context) {
    return Row(
      children: [
        icon.svg(colorFilter: _iconColorFilter(context), width: AppConstants.kDefaultSpacing),
        PrimarySpacing.gapXxs(),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        PrimarySpacing.gapSm(),
      ],
    );
  }
}
