import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recover Password'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Recover Password',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email *',
                        hintText: 'Your registered email',
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  ElevatedButton(
                    onPressed: () {
                      // Perform recovery logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      'RECOVER',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text(
                      "Already have an account? Login Here",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
