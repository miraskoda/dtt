import 'package:dtt/core/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
