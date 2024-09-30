import 'package:flutter/material.dart';

import 'HomePage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Image.asset('img/logo23.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Just Do It',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Brand new sneakers and custom kicks made with premium quality',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)  => HomePage(),)),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(25.0),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
