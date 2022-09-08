import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text("About Page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/2.png'),
           
            ],
          ),
        ),
      ),
    );
  }
}
