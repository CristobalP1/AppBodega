import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class ButtonSaveCanceller extends StatelessWidget {
  final next;
  final back;
  final String ruta;
  final canceller;

  const ButtonSaveCanceller({
    Key? key,
    this.next,
    this.back,
    this.ruta = "",
    this.canceller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextButton(
              onPressed: () => {Navigator.pop(context)},
              child: TextStyles2(
                tittle: back,
              )),
          TextButton(
              onPressed: () => {
                    if (ruta.isNotEmpty) {Navigator.pushNamed(context, ruta)}
                  },
              child: TextStyles2(
                tittle: next,
              )),
        ],
      ),
    );
  }
}

class TextStyles2 extends StatelessWidget {
  final tittle;

  const TextStyles2({
    Key? key,
    this.tittle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: const TextStyle(
          fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
    );
  }
}
