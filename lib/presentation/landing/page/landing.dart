import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              flex: 1,
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(
                  top: AppLayer.marginVertical,
                  left: AppLayer.marginHorizontal,
                  right: AppLayer.marginHorizontal,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pokedex',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter something',
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.green,
                child: const Center(child: Text('Component 2')),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('Component 3')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
