import 'package:flutter/material.dart';

/*
the job of a snackbar: 
- to in form the user of an action that took place
- give the user the option to undo the action
*/

class SnackbarApp extends StatelessWidget {
  const SnackbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('snackbar demo'),
      ),
      body: const SnackbarPage(),
    );
  }
}

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                  content: const Text('yay!! snackbar yaptim'),
                  action: SnackBarAction(label: 'undo', onPressed: () {}));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('show snackbar!!')));
  }
}
