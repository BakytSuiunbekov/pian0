import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomBlackButtom extends StatelessWidget {
  const CustomBlackButtom({
    super.key,
    required this.title,
    this.visible = true,
    required this.nota,
  });
  final String title;
  final bool visible;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 40,
        height: 110,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(top: 14),
              backgroundColor: const Color(0xff202637),
              minimumSize: const Size(35, 120),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.4)),
            ),
            onPressed: () {
              AudioPlayer().play(AssetSource('notes/$nota.mp3'));
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
