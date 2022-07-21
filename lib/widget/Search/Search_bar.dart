import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'Buscar',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(13),
                        child: Icon(Icons.search, color: AppTheme.primary),
                        width: 18,
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
