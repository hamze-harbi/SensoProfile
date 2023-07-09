import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questions et checkboxes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> selectedOptions = [];

  void _validateSelection() {
    setState(() {
      // Logique pour traiter les cases à cocher sélectionnées
      // Dans cet exemple, nous affichons simplement les options sélectionnées
      String message = 'Options sélectionnées : ';
      for (String option in selectedOptions) {
        message += '$option ';
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Résultat'),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions et checkboxes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Nous allons vous evaluez ?',
              style: TextStyle(fontSize: 18),
            ),
          ),
          CheckboxListTile(
            title: Text('Pas du tout'),
            value: selectedOptions.contains('Pas du tout'),
            onChanged: (bool? value) {
              setState(() {
                if (value!) {
                  selectedOptions.add('Pas du tout');
                } else {
                  selectedOptions.remove('Pas du tout');
                }
              });
            },
          ),
          CheckboxListTile(
            title: Text('Un peu'),
            value: selectedOptions.contains('Un peu'),
            onChanged: (bool? value) {
              setState(() {
                if (value!) {
                  selectedOptions.add('Un peu');
                } else {
                  selectedOptions.remove('Un peu');
                }
              });
            },
          ),
          CheckboxListTile(
            title: Text('Plus que la normale'),
            value: selectedOptions.contains('Plus que la normale'),
            onChanged: (bool? value) {
              setState(() {
                if (value!) {
                  selectedOptions.add('Plus que la normale');
                } else {
                  selectedOptions.remove('Plus que la normale');
                }
              });
            },
          ),
          CheckboxListTile(
            title: Text('Beaucoup'),
            value: selectedOptions.contains('Beaucoup'),
            onChanged: (bool? value) {
              setState(() {
                if (value!) {
                  selectedOptions.add('Beaucoup');
                } else {
                  selectedOptions.remove('Beaucoup');
                }
              });
            },
          ),
          CheckboxListTile(
            title: Text('Enormement'),
            value: selectedOptions.contains('Enormement'),
            onChanged: (bool? value) {
              setState(() {
                if (value!) {
                  selectedOptions.add('');
                } else {
                  selectedOptions.remove('Option 5');
                }
              });
            },
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: _validateSelection,
              child: Text('Valider'),
            ),
          ),
        ],
      ),
    );
  }
}
