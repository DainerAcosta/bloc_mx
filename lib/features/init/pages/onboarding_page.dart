import 'package:bloc_mx/features/init/models/user.dart';
import 'package:bloc_mx/features/init/pages/home_page.dart';
import 'package:bloc_mx/features/init/pages/login_page.dart';
import 'package:bloc_mx/features/init/pages/register_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Onboarding Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 200.0,
              buttonColor: Colors.orangeAccent,
              child: RaisedButton(
                child: Text('Get Started'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                    (_) => false,
                  );
                },
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              buttonColor: Colors.amberAccent,
              child: RaisedButton(
                child: Text('Login'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ),
            FlatButton(
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 8.0),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage(user: User('Guest', 0xff3de0cc))),
                  (_) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
