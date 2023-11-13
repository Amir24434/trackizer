import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 51, 67),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child:
                    Center(child: Image(image: AssetImage('asset/logo.png'))),
              ),
              const Stack(
                children: [
                  Image(image: AssetImage('asset/Image.png')),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Center(
                        child: Image(image: AssetImage('asset/Frame2.png'))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(image: AssetImage('asset/Frame (1).png')),
                    ],
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(image: AssetImage('asset/Image2.png')),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Center(
                    child: Text(
                      'Congue malesuada in ac justo, a tristique',
                      style: TextStyle(),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'leo massa. Arcu leo leo urna risus.',
                      style: TextStyle(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          backgroundColor:
                              const Color.fromARGB(255, 235, 129, 111),
                          shadowColor: const Color.fromARGB(235, 235, 129, 111),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text(
                          'Get started',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 51, 51, 57),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text(
                          'I have an account',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
