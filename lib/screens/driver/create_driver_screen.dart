import 'package:flutter/material.dart';

class CreateDriver extends StatefulWidget {
  const CreateDriver({super.key});

  @override
  State<CreateDriver> createState() => _CreateDriverState();
}

class _CreateDriverState extends State<CreateDriver> {

  final _numero_permis = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _numero_permis.dispose();
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
                const Text("Compte chauffeur",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _numero_permis,
                      decoration: const InputDecoration(
                          hintText: 'Numero de permis',
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
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
                            "Ajouter le compte",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )),
                    ),
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