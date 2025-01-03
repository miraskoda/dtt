import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/core/router/app_router.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/generated/l10n.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';
import 'package:dtt/ui/error/error_screen.dart';
import 'package:dtt/ui/others/app_bar.dart';
import 'package:dtt/ui/others/build_icon_with_text.dart';
import 'package:dtt/ui/others/empty_screen.dart';
import 'package:dtt/ui/others/primary_padding.dart';
import 'package:dtt/ui/others/primary_shimmer.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: BlocProvider(
        create: (_) => Injector.instance<MainScreenBloc>()..add(const MainScreenEvent.init()),
        child: Scaffold(
          appBar: const PrimaryAppbar(),
          body: BlocBuilder<MainScreenBloc, MainScreenState>(
            builder: (context, state) => NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  if (!state.isError)
                    SliverAppBar(
                      expandedHeight: 40,
                      elevation: 1,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.none,
                        background: Padding(
                          padding: const EdgeInsets.all(
                            AppConstants.kDefaultSpacing,
                          ),
                          child: SizedBox(
                            height: AppConstants.kLargeSpacing,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Theme.of(context).listTileTheme.tileColor,
                                borderRadius: BorderRadius.circular(AppConstants.kNormalBorderRadius),
                              ),
                              child: SizedBox(
                                height: AppConstants.kLargeSpacing,
                                child: TextFormField(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  onChanged: (String str) =>
                                      Injector.instance<MainScreenBloc>().add(MainScreenEvent.search(phrase: str)),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    suffixIconConstraints: const BoxConstraints(
                                      maxHeight: AppConstants.kDefaultSpacing,
                                    ),
                                    suffixIcon: state.searchText.isNotEmpty
                                        ? GestureDetector(
                                            child: Assets.icons.icClose.svg(),
                                            onTap: () {
                                              Injector.instance<MainScreenBloc>()
                                                  .add(const MainScreenEvent.search(phrase: ''));
                                              _controller.text = '';
                                            },
                                          )
                                        : Assets.icons.icSearch.svg(
                                            colorFilter: ColorFilter.mode(
                                              Theme.of(context).textTheme.bodyLarge!.color!,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                    hintText: S.of(context).search,
                                    contentPadding: const EdgeInsets.all(AppConstants.kContentPadding),
                                  ),
                                  controller: _controller,
                                  focusNode: _focusNode,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ];
              },
              body: Builder(
                builder: (context) {
                  if (state.isLoading) return const Center(child: PrimaryShimmer());
                  if (state.isError) return ErrorScreen(state.apiErrorString ?? S.of(context).error);
                  if (state.filteredHouses.isEmpty) return const EmptyScreen();

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
                                                if (state.location != null)
                                                  BuildIconWithText(
                                                    icon: Assets.icons.icLocation,
                                                    text: state.location!.getDistance(
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
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
