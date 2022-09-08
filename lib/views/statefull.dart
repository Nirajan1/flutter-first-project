import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:get/get.dart';

class StateLessWidget extends StatelessWidget {
  const StateLessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Center(
            child: Text("State Full Widget"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/spagity.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                title: Text("Traning course Offered by the company"),
                subtitle: Text('50% of all available course'),
                trailing: Icon(Icons.more_vert),
                leading: Icon(Icons.holiday_village),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/background.jpg',
                      fit: BoxFit.cover,
                      width: 200,
                      height: 150,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 100,
                    width: 150,
                    // ignore: prefer_const_constructors
                    child: const Text(
                      "State Widget\n to make thing worst many thing were done to the pople of color in united state.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18.0),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
              MaterialButton(
                color: Colors.indigo[200],
                textColor: Colors.white,
                onPressed: () {
                  Get.to(
                    () => const HomePage(),
                  );
                },
                child: const Text('HomePage'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
