import 'package:algoriza_task1/presentation/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/back.jpg',
            width: double.infinity,
            height: 100,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Welcome to fashion daily'),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Help",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.help, color: Colors.blue)
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text("Email"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Eg.example@gmail.com',
              ),
            ),
          ),



          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text("Phone Number"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Eg.659896589',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Register'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: const Size(double.infinity, 55)),
            ),
          ),
          const SizedBox(height: 20),
          Center(child: const Text('Or')),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Sign up with google',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.blue,
                  ),
                  primary: Colors.white,
                  minimumSize: const Size(double.infinity, 55)),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
            child: Center(
              child: RichText(
                  text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' login here',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ])),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
                'use the application according to policy rules. '
                    'any kinds of violations will be subjectes to sansaction',
                style: TextStyle(),
                textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}
