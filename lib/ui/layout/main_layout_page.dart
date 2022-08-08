import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {

  final Widget child;

  const MainLayoutPage({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            const Spacer(),
            Expanded(child: child),
            const Spacer()
          ],
        ),
      ),
    );
  }
}