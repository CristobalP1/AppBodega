import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class DetailsOrdersScreen extends StatelessWidget {
  const DetailsOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: AppTheme.quaternary,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Column(
            children: const [
              Text('Productos con stock critico'),
              SizedBox(
                height: 50,
              ),
              Text("data")
            ],
          ),
        ),
      ),
    );
  }
}
