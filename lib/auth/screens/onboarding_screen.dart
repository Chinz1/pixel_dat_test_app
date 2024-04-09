import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                  width: w,
                  height: h * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/onboarding_screen_logo.png"),
                          fit: BoxFit.cover))),
              const SizedBox(
                height: 50,
              ),
              Text("Do all the transactions",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.black,
                      )),
              const SizedBox(
                height: 10,
              ),
              Text("you need with",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.black,
                      )),
              const SizedBox(
                height: 10,
              ),
              Text("Enex",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Colors.black,
                      )),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Container(
                  width: w * 0.5,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Register Now",
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context,'/login');
                },
                child: Container(
                  width: w * 0.5,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.green.withOpacity(0.2))
                      ]),
                  child: Center(
                    child: Text(
                      "Login Instead",
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
