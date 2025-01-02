import 'package:dtt/generated/l10n.dart';
import 'package:flutter/material.dart';

class PrimaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        S.of(context).appBarTitle,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
