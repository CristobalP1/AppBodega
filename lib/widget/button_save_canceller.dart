import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class ButtonSaveCanceller extends StatelessWidget {
  final title1;
  final title2;

  const ButtonSaveCanceller({
    Key? key,
    this.title1,
    this.title2,
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
              onPressed: () => {},
              child: TextStyles2(
                tittle: title1,
              )),
          TextButton(
              onPressed: () => {},
              child: TextStyles2(
                tittle: title2,
              ))
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
