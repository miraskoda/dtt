import 'package:dtt/core/app_config.dart';
import 'package:dtt/core/bloc/app_bloc.dart';
import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/utils/url_lancher.dart';
import 'package:dtt/ui/bottom_navigation/info/dark_mode_list_tile.dart';
import 'package:dtt/ui/bottom_navigation/info/lang_list_tile.dart';
import 'package:dtt/ui/bottom_navigation/info/location_settings_page.dart';
import 'package:dtt/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String locale = context.select((AppBloc bloc) => bloc.state.locale);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppConstants.kDefaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ABOUT',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const PrimarySpacing.gapMd(),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const PrimarySpacing.gapMd(),
              Text(
                'Design and Development',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const PrimarySpacing.gapMd(),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/dtt_banner.png',
                    ),
                  ),
                  const PrimarySpacing.gapLg(),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'by DTT',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        GestureDetector(
                          onTap: () => UrlLauncher.launchURL(AppConfig.dttWebUrl),
                          child: Text(
                            'd-tt.nl',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const PrimarySpacing.gapLg(),
              Text(
                'Language',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const PrimarySpacing.gapMd(),
              LangListTile(locale: locale, lang: 'en', title: 'English'),
              LangListTile(locale: locale, lang: 'cs', title: 'Czech'),
              LangListTile(locale: locale, lang: 'nl', title: 'Dutch'),
              const PrimarySpacing.gapMd(),
              Text(
                'Dark mode selector',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const PrimarySpacing.gapMd(),
              const DarkModeListTile(),
              const PrimarySpacing.gapMd(),
              Text(
                'Location services',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const PrimarySpacing.gapMd(),
              const LocationSettingsTile(),
            ],
          ),
        ),
      ),
    );
  }
}
