import 'package:flutter/material.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/components/custom_textarea.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class UpdatePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                CustomTextFormField(
                  hint: "Title",
                  funValidator: validateTitle(),
                  value: "제목1~"*2,
                ),
                CustomTextArea(
                  hint: "Content",
                  funValidator: validateContent(),
                  value: "내용1~" * 20,
                ),
                // homepage -> detailpage -> updatepage ->
                CustomElevatedButton(
                    text: "글 수정하기",
                    funPageRoute: () {
                      if(_formKey.currentState!.validate()){
                       // Get.off(DetailPage(1));
                        Get.back();  //상테관리 Getx 라이브러리 - Obs
                      }
                    }
                )
              ],
            ),
          ),
        )
    );
  }
}
