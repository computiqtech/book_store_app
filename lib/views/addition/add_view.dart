import 'widgets/body.dart';
import 'package:flutter/material.dart';

class AddView extends StatelessWidget {
  const AddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Body(),
      ),
    );
  }
}
