import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiagnosticPage(),
    );
  }
}

class DiagnosticPage extends StatefulWidget {
  @override
  _DiagnosticPageState createState() => _DiagnosticPageState();
}

class _DiagnosticPageState extends State<DiagnosticPage> {
  List<Question> questions = [
    Question('Question 1', false),
    Question('Question 2', false),
    Question('Question 3', false),
    Question('Question 4', false),
    Question('Question 5', false),
  ];

  void updateResult() {
    List<Question> selectedQuestions =
        questions.where((question) => question.isSelected).toList();
    int totalQuestions = questions.length;
    int selectedCount = selectedQuestions.length;
    double percentage = (selectedCount / totalQuestions) * 100;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Résultat du diagnostic'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Pourcentage de réponses sélectionnées: ${percentage.toStringAsFixed(2)}%'),
            SizedBox(height: 20),
            Text('Réponses sélectionnées:'),
            for (Question question in selectedQuestions)
              Text(question.text),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fermer'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Application'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(questions[index].text),
            value: questions[index].isSelected,
            onChanged: (value) {
              setState(() {
                questions[index].isSelected = value!;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          updateResult();
        },
        child: Icon(Icons.check),
      ),
    );
  }
}

class Question {
  final String text;
  bool isSelected;

  Question(this.text, this.isSelected);
}
