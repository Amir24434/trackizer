import 'package:flutter/material.dart';

class Register1 extends StatefulWidget {
  const Register1({super.key});

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Center(child: Image(image: AssetImage('asset/logo.png'))),
            ),
            //const SizedBox(height: 250),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.apple_outlined),
                          SizedBox(width: 10),
                          Text(
                            'Sign up with Apple',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        backgroundColor: Colors.white,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.g_mobiledata_rounded,
                              color: Colors.black, size: 30),
                          SizedBox(width: 10),
                          Text(
                            'Sign up with Google',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        backgroundColor:
                            const Color.fromARGB(255, 19, 166, 235),
                        shadowColor: const Color.fromARGB(255, 62, 119, 231),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_rounded),
                          SizedBox(width: 10),
                          Text(
                            'Sign up with Facebook',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  child: Center(
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          backgroundColor:
                              const Color.fromARGB(255, 51, 51, 57),
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text(
                          'Get started',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'By registering, you agree to our Terms of Use. Learn',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      Center(
                        child: Text(
                          'how we collect, use and share your data.',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
