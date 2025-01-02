import 'package:dtt/core/app_config.dart';
import 'package:dtt/core/bloc/app_bloc.dart';
import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/core/utils/url_lancher.dart';
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
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: AppConstants.kDefaultSpacing),
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
                          onTap: () {
                            UrlLauncher.launchURL(AppConfig.dttWebUrl);
                          },
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
              LangListTile(locale: locale, lang: 'en', title: 'English'),
              LangListTile(locale: locale, lang: 'cs', title: 'Czech'),
              LangListTile(locale: locale, lang: 'nl', title: 'Dutch'),
              const DarkModeListTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class LangListTile extends StatelessWidget {
  const LangListTile({
    required this.locale,
    required this.lang,
    required this.title,
    super.key,
  });

  final String locale;
  final String lang;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ColoredBox(
        color: Colors.white.withValues(alpha: .2),
        child: RadioListTile<String>(
          dense: true,
          value: lang,
          groupValue: locale,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            context.read<AppBloc>().add(AppEvent.localeChanged(locale: lang));
          },
          title: Text(title),
        ),
      ),
    );
  }
}

class DarkModeListTile extends StatelessWidget {
  const DarkModeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white.withValues(alpha: .2),
      child: SwitchListTile(
        dense: true,
        controlAffinity: ListTileControlAffinity.trailing,
        value: context.select((AppBloc bloc) => bloc.state.isDarkMode),
        onChanged: (value) {
          context.read<AppBloc>().add(const AppEvent.darkModeChanged());
        },
        title: const Text('Dark mode'),
      ),
    );
  }
}
