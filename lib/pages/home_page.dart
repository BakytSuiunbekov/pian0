import 'package:flutter/material.dart';
import 'package:pianino/widgets/custom_white_button.dart';
import 'package:pianino/widgets/custom_black_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff202637),
        title: const Text(
          'My Piano App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.white,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Stack(
                    children: [
                      Row(
                        children: [
                          CustomWhiteButton(title: 'f1', nota: 'do'),
                          CustomWhiteButton(title: 'f2', nota: 're'),
                          CustomWhiteButton(title: 'f3', nota: 'mi'),
                          CustomWhiteButton(title: 'f4', nota: 'fa'),
                          CustomWhiteButton(title: 'f5', nota: 'sol'),
                          CustomWhiteButton(title: 'f6', nota: 'lya'),
                          CustomWhiteButton(title: 'f7', nota: 'si'),
                        ],
                      ),
                      Positioned(
                        left: 31,
                        child: Row(
                          children: [
                            CustomBlackButtom(title: 'f1', nota: 'do'),
                            CustomBlackButtom(title: 'f2', nota: 're'),
                            CustomBlackButtom(
                                title: 'f3', visible: false, nota: 'mi'),
                            CustomBlackButtom(title: 'f4', nota: 'fa'),
                            CustomBlackButtom(title: 'f5', nota: 'sol'),
                            CustomBlackButtom(title: 'f6', nota: 'lya'),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
