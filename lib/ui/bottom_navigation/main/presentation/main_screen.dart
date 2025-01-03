import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/injector/injector.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:dtt/generated/l10n.dart';
import 'package:dtt/ui/bottom_navigation/main/application/main_screen_bloc.dart';
import 'package:dtt/ui/bottom_navigation/main/presentation/house_item.dart';
import 'package:dtt/ui/error/error_screen.dart';
import 'package:dtt/ui/others/app_bar.dart';
import 'package:dtt/ui/others/empty_screen.dart';
import 'package:dtt/ui/others/primary_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppConstants.kDefaultSpacing,
                            vertical: AppConstants.kSmallSpacing,
                          ),
                          child: SizedBox(
                            height: AppConstants.kLargeSpacing,
                            child: Row(
                              children: [
                                Expanded(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).listTileTheme.tileColor,
                                      borderRadius: BorderRadius.circular(AppConstants.kNormalBorderRadius),
                                    ),
                                    child: SizedBox(
                                      height: AppConstants.kLargeSpacing,
                                      child: TextFormField(
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        onChanged: (String str) => Injector.instance<MainScreenBloc>()
                                            .add(MainScreenEvent.search(phrase: str)),
                                        decoration: InputDecoration(
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
                                Padding(
                                  padding: const EdgeInsets.only(left: AppConstants.kDefaultSpacing),
                                  child: InkWell(
                                    onTap: () =>
                                        Injector.instance<MainScreenBloc>().add(const MainScreenEvent.reSort()),
                                    child: Assets.icons.icSort.svg(
                                      height: AppConstants.kDefaultSpacing,
                                      colorFilter: ColorFilter.mode(
                                        Theme.of(context).textTheme.bodyLarge!.color!,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                  if (state.isError) {
                    return ErrorScreen('${state.apiErrorString ?? S.of(context).error} \n\n Tap here to reload again!');
                  }
                  if (state.filteredHouses.isEmpty) return const EmptyScreen();
                  return RefreshIndicator(
                    onRefresh: () async {
                      Injector.instance<MainScreenBloc>().add(const MainScreenEvent.init());
                    },
                    child: ListView.builder(
                      itemCount: state.filteredHouses.length,
                      itemBuilder: (_, index) {
                        final house = state.filteredHouses[index];
                        return HouseItem(house, state.location);
                      },
                    ),
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
