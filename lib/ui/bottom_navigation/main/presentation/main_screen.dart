import 'package:dtt/core/extensions/app_extensions.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/core/router/app_router.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';
import 'package:dtt/ui/error/error_screen.dart';
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
          title: Text('DTT REAL ESTATE'),
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 40,
                elevation: 1,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1.0,
                  collapseMode: CollapseMode.none,
                  background: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      height: 30,
                      child: DecoratedBox(
                        decoration:
                            BoxDecoration(color: AppThemes.brandDarkGray, borderRadius: BorderRadius.circular(8)),
                        child: SizedBox(
                          height: 30,
                          width: 300,
                          child: TextFormField(
                            onChanged: (String str) {},
                            decoration: InputDecoration(
                              isDense: true,
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'Search',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(vertical: 12),
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
          body: BlocBuilder<MainScreenBloc, MainScreenState>(builder: (context, state) {
            if (state.isLoading) return Center(child: CircularProgressIndicator());
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
                              house.image.asDttImage(),
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
                                    '\$${house.price.toString()}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  // Adresa
                                  Text(
                                    house.city,
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
                                      Text('${house.bedrooms}'),
                                      SizedBox(width: 8),
                                      Icon(Icons.bathtub, size: 16, color: Colors.grey),
                                      SizedBox(width: 4),
                                      Text('${house.bathrooms}'),
                                      SizedBox(width: 8),
                                      Icon(Icons.square_foot, size: 16, color: Colors.grey),
                                      SizedBox(width: 4),
                                      Text('${house.size} m²'),
                                      SizedBox(width: 8),
                                      Icon(Icons.location_on, size: 16, color: Colors.grey),
                                      SizedBox(width: 4),
                                      Text('100 km'),
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
          }),
        ),
      ),
    );
  }
}
