import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  var _isObscured;

  @override
  void initState() {
    super.initState();
    //_emailController.text = testEmail;
    //_passwordController.text = testPassword;
    _isObscured = true;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 51, 67),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child:
                      Center(child: Image(image: AssetImage('asset/logo.png'))),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'E-mail address',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: _emailController,
                            focusNode: _emailFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: 'Your email address here',
                              fillColor: Colors.grey[80],
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            obscureText: _isObscured,
                            focusNode: _passwordFocusNode,
                            controller: _passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscured = !_isObscured;
                                  });
                                },
                                icon: _isObscured
                                    ? const Icon(
                                        Icons.visibility,
                                        color: Colors.grey,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: 'Password',
                              fillColor: Colors.grey[80],
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 5,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Divider(
                              thickness: 5,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Divider(
                              thickness: 5,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Divider(
                              thickness: 5,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Use 8 or more characters with a mix of letters,\nnumbers & symbols.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  backgroundColor:
                                      const Color.fromARGB(255, 235, 129, 111),
                                  shadowColor:
                                      const Color.fromARGB(235, 235, 129, 111),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                child: const Text(
                                  'Register',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Container(
                    child: Column(children: [
                      const Text(
                        'Do you have an account already?',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                              backgroundColor:
                                  const Color.fromARGB(255, 41, 31, 57),
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
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
