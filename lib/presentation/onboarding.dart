import 'package:algoriza_task1/presentation/signup.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        showNextButton: false,
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.red,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
        onSkip: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SignUp()));
        },
        skip: const Card(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
        done: const Card(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Done",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
        onDone: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SignUp()));
        },
        back: const Text("Back"),
        pages: [
          PageViewModel(
            bodyWidget: Column(
              children: [
                const Text(
                    'We have young and professional delivery team that will '
                    'bring you food as soon as possible to your doorstep'),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  child: const Text(
                    "Get started",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 70),
                      primary: Colors.teal),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 60,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Dont have an account?',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ])),
              ],
            ),
            image: Image.asset('assets/images/intro1.png'),
            title: 'Get food delivery to your doorstep asap',
          ),
          PageViewModel(
            bodyWidget: Column(
              children: [
                const Text(
                    'We have young and professional delivery team that will '
                    'bring you food as soon as possible to your doorstep'),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  child: const Text(
                    "Get started",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 70),
                      primary: Colors.teal),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 60,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Dont have an account?',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ])),
              ],
            ),
            image: Image.asset('assets/images/intro2.png'),
            title: 'Buy any food from your favorite restaurant',
          ),
        ],
      ),
    );
  }
}
