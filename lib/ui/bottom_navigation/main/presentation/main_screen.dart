import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/core/router/app_router.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';
import 'package:dtt/ui/error/error_screen.dart';
import 'package:dtt/ui/other/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Injector.instance<MainScreenBloc>()..add(const MainScreenEvent.init()),
      child: Scaffold(
        appBar: const PrimaryAppbar(),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 40,
                elevation: 1,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.none,
                  background: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.kDefaultSpacing,
                      vertical: AppConstants.kSmallSpacing,
                    ),
                    child: SizedBox(
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppThemes.brandDarkGray,
                          borderRadius: BorderRadius.circular(AppConstants.kSmallSpacing),
                        ),
                        child: SizedBox(
                          height: 30,
                          width: 300,
                          child: TextFormField(
                            onChanged: (String str) {},
                            decoration: const InputDecoration(
                              isDense: true,
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 12),
                            ),
                            focusNode: FocusNode(),
                            controller: TextEditingController(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: BlocBuilder<MainScreenBloc, MainScreenState>(
            builder: (context, state) {
              if (state.isLoading) return const Center(child: CircularProgressIndicator());
              if (state.isError) return ErrorScreen(state.apiErrorString!);
              return ListView.builder(
                itemCount: state.housesData.length,
                itemBuilder: (context, index) {
                  final house = state.housesData[index];
                  return GestureDetector(
                    onTap: () {
                      context.push(AppRouter.detailPath, extra: house);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(AppConstants.kSmallSpacing),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppConstants.kSmallSpacing),
                        ),
                        elevation: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(AppConstants.kSmallSpacing),
                                bottomLeft: Radius.circular(AppConstants.kSmallSpacing),
                              ),
                              child: Hero(
                                tag: house.id,
                                child: Image.network(
                                  house.image.asDttImage(),
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(AppConstants.kSmallSpacing),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$${house.price}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: AppConstants.kDefaultSpacing,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      house.city,
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        const Icon(Icons.bed, size: AppConstants.kDefaultSpacing, color: Colors.grey),
                                        const SizedBox(width: 4),
                                        Text('${house.bedrooms}'),
                                        const SizedBox(width: AppConstants.kSmallSpacing),
                                        const Icon(Icons.bathtub,
                                            size: AppConstants.kDefaultSpacing, color: Colors.grey),
                                        const SizedBox(width: 4),
                                        Text('${house.bathrooms}'),
                                        const SizedBox(width: AppConstants.kSmallSpacing),
                                        const Icon(Icons.square_foot,
                                            size: AppConstants.kDefaultSpacing, color: Colors.grey),
                                        const SizedBox(width: 4),
                                        Text('${house.size} m²'),
                                        const SizedBox(width: AppConstants.kSmallSpacing),
                                        const Icon(Icons.location_on,
                                            size: AppConstants.kDefaultSpacing, color: Colors.grey),
                                        const SizedBox(width: 4),
                                        const Text('100 km'),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
