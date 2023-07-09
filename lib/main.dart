import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SENOPROFILE'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/ha.jpg', 
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 16.0,
            bottom: 16.0,
            child: ElevatedButton(
              onPressed: () {

                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> MyPage()),
                );
              },
              child: Text('Débuter ma séance'),
              
            ),
          ),
        ],
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/clini.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Êtes-vous Hypersensible ?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Qu\'est ce qu\'etre Hypersensible ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
             Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=>  hyperPage()),
                  );
                    },
                    child: Text('suivant'),
                  ),
                ),
              ),
             Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=>  HomePage()),
                  );
                    },
                    child: Text('Precedent'),
                  ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}


class hyperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/steto.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Mon application'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Qu\'est ce que qu\'etre hypersensible ?',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  ' hypersensibilité, un état psychologique dans lequel individu exprime une sensibilité plus forte que les autres. Un effet qui peut se produire régulièrement ou ponctuellement. Le comportement un hypersensible est souvent perçu comme disproportionné ou excessif',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'SenSoProfile n\'est pas un outil diagnostics mais un outil de detection informative',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                                           Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=>  MyPage()),
                  );
                   
                  },
                  child: Text('Précédent'),
                ),
                ElevatedButton(
                  onPressed: () {
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=>  ListeView()),
                  );
                  },
                  child: Text('Suivant'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



class ListeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Application'),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: Text('Vision'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListViewPage(
                      title: 'Vision',
                      questions: [
                        'Pas du tout',
                        'Un peu',
                        'Plus que normale',
                        'Beaucoup ',
                        'Enorement',
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Audition'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListViewPage(
                      title: 'Audition',
                      questions:  [
                        'Pas du tout',
                        'Un peu',
                        'Plus que normale',
                        'Beaucoup ',
                        'Enorement',
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Tactille'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListViewPage(
                      title: 'Tactille',
                      questions:  [
                        'Pas du tout',
                        'Un peu',
                        'Plus que normale',
                        'Beaucoup ',
                        'Enorement',
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Olfaction'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListViewPage(
                      title: 'Olfaction',
                      questions:  [
                        'Pas du tout',
                        'Un peu',
                        'Plus que normale',
                        'Beaucoup ',
                        'Enorement',
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Gutation'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListViewPage(
                      title: '',
                      questions:  [
                        'Pas du tout',
                        'Un peu',
                        'Plus que normale',
                        'Beaucoup ',
                        'Enorement',
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewPage extends StatefulWidget {
  final String title;
  final List<String> questions;

  ListViewPage({required this.title, required this.questions});

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<bool> _answers = [];

  @override
  void initState() {
    super.initState();
    _answers = List<bool>.filled(widget.questions.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: widget.questions.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(widget.questions[index]),
            value: _answers[index],
            onChanged: (value) {
              setState(() {
                _answers[index] = value!;
              });
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
                Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(),
      ),
    );

          },
          child: Text('Suivant'),
        ),
      ),
    );
  }
}

class ResultPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ResultPage> {
  List<String> selectedOptions = [];

  void _validateSelection() {
    setState(() {
      // Logique pour traiter les cases à cocher sélectionnées
      // Dans cet exemple, nous affichons simplement les options sélectionnées
      // ignore: unused_local_variable
      for (String option in selectedOptions) {
      }
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
                  selectedOptions.remove('Enormement');
                }
              });
            },
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
               onPressed: () {
                Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomeP (),
      ),
    );

          },

              child: Text('Valider'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomeP extends StatefulWidget {
  @override
  _MyHomePState createState() => _MyHomePState();
}

class _MyHomePState extends State<MyHomeP> {
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
          Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=>  ListeView()),
                  );
                    },
                    child: Text('Precedent'),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> MyGoPage()),
                  );
                    },
                    child: Text('Suivant'),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

class MyGoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Application'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Action du bouton "GO"
              },
              child: Text(
                'GO',
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(500, 200),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
         onPressed: () {
    

          },

        child: Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

