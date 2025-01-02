import 'package:flutter/material.dart';

class PrimaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("DTT REAL ESTATE"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
