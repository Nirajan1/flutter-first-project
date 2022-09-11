import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('About page'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/2.png'),
              const SizedBox(
                height: 10,
              ),
              const CustomCard(),
            ],
          ),
        ),
      ),
    );
  }
}
