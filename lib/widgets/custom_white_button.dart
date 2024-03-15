import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CustomWhiteButton extends StatelessWidget {
  const CustomWhiteButton({
    super.key,
    required this.title,
    required this.nota,
  });
  final String title;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(bottom: 20),
                  backgroundColor: const Color(0xfff7f7f7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.4)),
                  minimumSize: const Size(54, 100),
                  side: const BorderSide(color: Color(0xffc3c3c3))),
              onPressed: () {
                AudioPlayer().play(AssetSource('notes/$nota.mp3'));
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 10,
            width: 54,
            color: const Color(0xffdbdbdb),
          )
        ],
      ),
    );
  }
}
