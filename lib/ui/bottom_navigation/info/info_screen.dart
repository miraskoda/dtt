import 'package:dtt/core/bloc/app_bloc.dart';
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ABOUT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 32),
              const Text(
                'Design and Development',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/dtt_banner.png', // URL obrázku DTT
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'by DTT',
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Otevření odkazu v prohlížeči
                          },
                          child: const Text(
                            'd-tt.nl',
                            style: TextStyle(
                              fontSize: 16,
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
              LangListTile(locale: locale, lang: 'en', title: 'en'),
              LangListTile(locale: locale, lang: 'cs', title: 'cz', iconCode: 'cs-CZ'),
              LangListTile(locale: locale, lang: 'sk', title: 'sk'),
              SwitchListTile(
                value: context.select((AppBloc bloc) => bloc.state.isDarkMode),
                onChanged: (value) {
                  context.read<AppBloc>().add(const AppEvent.darkModeChanged());
                },
                title: Text('Dark mode'),
              ),
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
    this.iconCode,
  });

  final String locale;
  final String lang;
  final String title;
  final String? iconCode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.1),
        ),
        child: RadioListTile<String>(
          dense: true,
          // secondary: CountryFlag.fromLanguageCode(
          //   iconCode ?? lang,
          //   width: 41,
          //   height: 24,
          // ),
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
