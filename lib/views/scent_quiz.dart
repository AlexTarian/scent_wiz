import 'package:flutter/material.dart';
import 'package:scent_wiz/components/custom_app_bar.dart';
import 'package:scent_wiz/components/nav_menu.dart';
import 'package:scent_wiz/services/quiz_engine.dart';
import 'package:scent_wiz/views/note_hub.dart';

class ScentQuizScreen extends StatefulWidget {
  const ScentQuizScreen({Key? key}) : super(key: key);

  @override
  State<ScentQuizScreen> createState() => _ScentQuizScreenState();
}

class _ScentQuizScreenState extends State<ScentQuizScreen> {
  TextEditingController preferenceData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85.0),
        child: Builder(builder: (context) {
          return customAppBar(iconR: Icons.help, onPressedR: () {});
        }),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColorDark,
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).scaffoldBackgroundColor,
                ],
              )),
          child: SafeArea(
            minimum: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 20.0),
                      Text('QUESTION ${quizEngine.questionNumber + 1}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        quizEngine.getQuestionText(),
                        style: const TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            child: Container(
                              width: double.infinity,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(quizEngine.getQuestionOptionA(),
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                preferenceData.text = preferenceData.text + quizEngine.getQuestionResultA();
                                quizEngine.nextQuestion();
                              });
                              if (quizEngine.isFinished()) {
                                Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (context) => NoteHubScreen(preferenceData: preferenceData)));
                              };
                            },
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            child: Container(
                              width: double.infinity,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(quizEngine.getQuestionOptionB(),
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                preferenceData.text = preferenceData.text + quizEngine.getQuestionResultB();
                                quizEngine.nextQuestion();
                              });
                              if (quizEngine.isFinished()) {
                                Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (context) => NoteHubScreen(preferenceData: preferenceData)));
                              };
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            child: Container(
                              width: double.infinity,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(quizEngine.getQuestionOptionC(),
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                preferenceData.text = preferenceData.text + quizEngine.getQuestionResultC();
                                quizEngine.nextQuestion();
                              });
                              if (quizEngine.isFinished()) {
                                Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (context) => NoteHubScreen(preferenceData: preferenceData)));
                              };
                            },
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            child: Container(
                              width: double.infinity,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(quizEngine.getQuestionOptionD(),
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                preferenceData.text = preferenceData.text +
                                    quizEngine.getQuestionResultD();
                                quizEngine.nextQuestion();
                              });
                              if (quizEngine.isFinished()) {
                                Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (context) => NoteHubScreen(preferenceData: preferenceData)));
                              };
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Text('${quizEngine.questionNumber}/${quizEngine.questionBank.length} \n ${preferenceData.text}'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}