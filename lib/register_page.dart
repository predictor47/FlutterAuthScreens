import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _gdprChecked = false;
  bool _termsChecked = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Username *',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email *',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password *',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Repeat Password *',
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: const Text('Compliance with GDPR'),
                    value: _gdprChecked,
                    onChanged: (newValue) {
                      setState(() {
                        _gdprChecked = newValue ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('I agree to terms & conditions'),
                    value: _termsChecked,
                    onChanged: (newValue) {
                      setState(() {
                        _termsChecked = newValue ?? false;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform registration logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Resend verification?'),
                  ),
                  const Text('OR'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.facebook),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.twitter),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.google),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Already have an account? Login here."),
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
