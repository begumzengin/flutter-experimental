import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Text('snackbar demo',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
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
                  content: Text('yay!! snackbar yaptim',
                      style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
                  action: SnackBarAction(label: 'undo', onPressed: () {}));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('show snackbar!!'),
            style:
                ElevatedButton.styleFrom(backgroundColor: Color(0xFFF5918F))));
  }
}
