import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _phoneNumber = TextEditingController();
  final _password = TextEditingController();
  String? verificationId;

  @override
  void dispose() {
    super.dispose();
    _password.dispose();
    _phoneNumber.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                  ),
                ),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            margin: const EdgeInsets.only(top: 150, left: 10, right: 10),
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ]),
            child: Column(
              children: [
                const SizedBox(height: 25),
                const Text("Connexion",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _phoneNumber,
                      decoration: const InputDecoration(
                          hintText: 'Phone number',
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0))),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _password,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0))),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,),
                          child: const Text(
                            "Se connecter",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                          onPressed: () { },
                          child: const Row(
                            children: [
                              Text(
                                "S'inscrire",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 16,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: const Center(
                  child: Text(
                    "Mon Chauffeur",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
