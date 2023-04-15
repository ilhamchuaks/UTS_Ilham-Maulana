import 'package:flutter/material.dart';
import 'menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
          width: double.infinity,
          color: Colors.yellow,
          height: 80,
          child: const Center(
            child: Text(
              "Don't Have Account ? Sign Up",
              style: TextStyle(color: Colors.black),
            ),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage("assets/chair_light_gray_bg.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Future',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: '1207070058 Ilham Maulana',
                            hintStyle:
                                const TextStyle(color: Color(0xff003210)),
                            filled: true,
                            fillColor: const Color(0xffEEEEEE),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0x0fffffff),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                )),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Kata Sandi',
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: _isSecure,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                if (_isSecure) {
                                  setState(() {
                                    _isSecure = false;
                                  });
                                } else {
                                  setState(() {
                                    _isSecure = true;
                                  });
                                }
                              },
                              child: Icon(
                                _isSecure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                            ),
                            hintText: 'ilham ganteng',
                            hintStyle:
                                const TextStyle(color: Color(0xff003210)),
                            filled: true,
                            fillColor: const Color(0xffEEEEEE),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0x0fffffff),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                )),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyWidget()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                              child: Text(
                            'Sign In',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}