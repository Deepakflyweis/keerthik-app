
import 'package:flutter/material.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/text_style.dart';

class QuizHomeScreen extends StatefulWidget {
  const QuizHomeScreen({Key? key}) : super(key: key);

  @override
  State<QuizHomeScreen> createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios,size: 25,color: blckclr,)),
          title: Text('Quiz', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(

          ),
        ),
      ),
    );
  }
}
