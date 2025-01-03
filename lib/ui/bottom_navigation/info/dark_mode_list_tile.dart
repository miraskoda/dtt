import 'package:dtt/core/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DarkModeListTile extends StatelessWidget {
  const DarkModeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ColoredBox(
        color: Colors.white.withValues(alpha: .2),
        child: SwitchListTile(
          dense: true,
          controlAffinity: ListTileControlAffinity.trailing,
          value: context.select((AppBloc bloc) => bloc.state.isDarkMode),
          onChanged: (value) {
            context.read<AppBloc>().add(const AppEvent.darkModeChanged());
          },
          title: Text(
            'Dark mode',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
