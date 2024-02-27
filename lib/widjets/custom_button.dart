import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.tuuraButtonbu, required this.baskanda});

  final bool tuuraButtonbu;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
          width: double.infinity,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor:
                    tuuraButtonbu == true ? Colors.green : Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6))),
            onPressed: () => baskanda(tuuraButtonbu),
            child: Text(
              tuuraButtonbu == true ? 'Туура' : 'Туура эмес',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
          )),
    );
  }
}
