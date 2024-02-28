import 'package:flutter/material.dart';
import 'package:work_7/model/quiz_model.dart';
import 'package:work_7/widjets/custom_button.dart';
import 'package:work_7/widjets/result_icon.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<bool> jooptor = [];
  List<bool> tuuraJooptor = [];
  List<bool> kataJooptor = [];

  void teksher(bool value) {
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Тест аяктады!'),
              content: Text(
                'Суроолордун саны: ${jooptor.length}\n'
                'Сенин туура жоопторун: ${tuuraJooptor.length}\n'
                'Сенин ката жоопторундун саны: ${kataJooptor.length}\n',
              ),
              actions: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Кайра баштоо'),
                  onPressed: () {
                    setState(() {
                      index = 0;
                      jooptor.clear();
                      tuuraJooptor.clear();
                      kataJooptor.clear();
                      Navigator.of(context).pop();
                    });
                  },
                ),
              ],
            );
          },
        );
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тапшырма 7'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff363636),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
            child: Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          CustomButton(
            tuuraButtonbu: true,
            baskanda: (value) {
              teksher(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            tuuraButtonbu: false,
            baskanda: (value) {
              teksher(value);
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jooptor.length,
                itemBuilder: (context, index) {
                  return jooptor[index] == true
                      ? const ResultIcon(tuuraIconbu: true)
                      : const ResultIcon(tuuraIconbu: false);
                }),
          )
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          //   child: Row(
          //     children: [
          //       ResultIcon(
          //         tuuraIconbu: true,
          //       ),
          //       ResultIcon(
          //         tuuraIconbu: false,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
