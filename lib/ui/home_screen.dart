import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int imageIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/$imageIndex.png')),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: 50,
                  color: Colors.black.withOpacity(0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Number $imageIndex',
                        style: const TextStyle(fontSize: 17),
                      ),
                      const Icon(Icons.favorite),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (imageIndex > 1) {
                        imageIndex--;
                      } else {
                        imageIndex = 4;
                      }
                      setState(() {});
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                ElevatedButton(
                    onPressed: () {
                      if (imageIndex < 4) {
                        imageIndex++;
                      } else {
                        imageIndex = 1;
                      }
                      setState(() {});
                    },
                    child: const Icon(Icons.arrow_forward_ios)),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 300,
            ),
          ],
        ),
      )),
    );
  }
}
