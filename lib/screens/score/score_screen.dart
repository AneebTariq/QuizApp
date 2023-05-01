import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "${_qnController.correctAns! * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(
                flex: 3,
              ),
              InkWell(
                onTap: () => Get.to(const WelcomeScreen()),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                  decoration: const BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    " Let's Try Again",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.black),
                  ),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
