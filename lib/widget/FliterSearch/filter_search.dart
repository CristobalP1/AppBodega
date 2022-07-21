import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home/filter_home.dart';
import 'package:flutter_application_1/screens/Home/select_list_controller.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../Provider/list_category_provider.dart';

class FilterSearchHome extends StatelessWidget {
  var controller = Get.put(SelectedListController());
  final n1;
  final n2;
  final n3;
  final n4;
  final n5;
  final n6;
  final n7;
  final n8;
  final n9;
  final n10;
  final n11;
  final n12;
  FilterSearchHome({
    Key? key,
    this.n1,
    this.n2,
    this.n3,
    this.n4,
    this.n5,
    this.n6,
    this.n7,
    this.n8,
    this.n9,
    this.n10,
    this.n11,
    this.n12,
  }) : super(key: key);

  get selectedUserList => 0;

  List<String> defaultList = [];

  void openFilterDialog(context) async {
    defaultList.add(n1);
    defaultList.add(n2);
    defaultList.add(n3);
    defaultList.add(n4);
    defaultList.add(n5);
    defaultList.add(n6);
    defaultList.add(n7);
    defaultList.add(n8);
    defaultList.add(n9);
    defaultList.add(n10);
    defaultList.add(n11);
    await FilterListDialog.display<String>(
      context,
      listData: defaultList,
      selectedListData: controller.selectedList,
      headlineText: 'Filtrar categorias',
      choiceChipLabel: (item) => item,
      validateSelectedItem: (list, val) => list!.contains(val),
      onItemSearch: (list, text) {
        return selectedUserList.list(
            (element) => element.toLowerCase().contains(text.toLowerCase()));
      },
      onApplyButtonClick: (list) {
        controller.selectedList.value = (List<String>.from(list!));
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FilterHomeScreen(
                      list: list,
                    )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 60,
      child: Row(
        children: <Widget>[
          // First
          Expanded(
            child: GestureDetector(
              child: Container(
                  margin: const EdgeInsets.only(right: 5, left: 10),
                  decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Buscar Producto',
                          suffixIcon: IconButton(
                              onPressed: () => {},
                              icon: const Icon(
                                Icons.search,
                                color: AppTheme.primary,
                              )),
                        ),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            width: 125,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Container(
                        margin: const EdgeInsets.only(left: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: TextButton(
                            onPressed: () => {openFilterDialog(context)},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  'Filtrar',
                                  style: TextStyle(color: Colors.black45),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.filter_alt_sharp,
                                  color: AppTheme.primary,
                                )
                              ],
                            ))),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: const [],
          ),
        ],
      ),
    );
  }
}
