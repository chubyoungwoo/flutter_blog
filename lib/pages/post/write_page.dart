import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/util/validator_util.dart';

class WritePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextFormField(
              hint: "Title",
              funValidator: validateUsername(),
            ),
          ],
        ),
      )
    );
  }
}
