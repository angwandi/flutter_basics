import 'package:flutter/material.dart';
import 'package:flutter_basics/basic/input_widgets/text_feild.dart';

final _formKey = GlobalKey<FormState>();

class CustomStepperView extends StatefulWidget {
  static const id = 'cust';

  @override
  _IconStepperDemo createState() => _IconStepperDemo();
}

class _IconStepperDemo extends State<CustomStepperView> {

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          EditTextFieldView(),
        ],
      ),
    );
  }
}
