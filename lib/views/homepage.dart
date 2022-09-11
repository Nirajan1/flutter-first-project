import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/about.dart';
import 'package:flutter_application_1/views/statefull.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: const Center(
            child: Text("Home Page"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // widget 1
              Image.asset('images/1.png'),
              //widget 2
              const SizedBox(
                height: 10,
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Text(
                    "Hello this is some of my first text in the flutter development course. Get up to 50% off in the following course offered here. Do like and subscribe to my youtube channel"),
              ),
              //sizebox widget
              const SizedBox(
                height: 10,
              ),

              //widget 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    color: Colors.orange[200],
                    textColor: Colors.teal,
                    onPressed: () {},
                    child: const Text("save"),
                  ),
                  MaterialButton(
                    color: Colors.red[200],
                    textColor: Colors.teal,
                    onPressed: () {},
                    child: const Text("Delete"),
                  ),
                  MaterialButton(
                    color: Colors.green[200],
                    textColor: Colors.teal,
                    onPressed: () {},
                    child: const Text("Update"),
                  ),
                ],
              ),

              //widget to go in next pages
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    color: Colors.blue[200],
                    textColor: Colors.teal,
                    onPressed: () {
                      Get.to(() => const AboutPage());
                    },
                    child: const Text("About Page"),
                  ),
                  MaterialButton(
                    color: Colors.indigo[300],
                    textColor: Colors.white,
                    onPressed: () {
                      Get.to(() => const StateLessWidget());
                    },
                    child: const Text("State Less Widget"),
                  ),
                ],
              ),
              const Center(
                child: Text("Click on above button and get to the next page"),
              ),
              // spacecreated
              const SizedBox(
                height: 20,
              ),
              //   card widget
              const CustomCard(),
              const CustomCard(),
              const CustomCard(),
            ],
          ),
        ),
      ),
    );
  }
}
