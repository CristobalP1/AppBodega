import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home/filter_home.dart';
import 'package:flutter_application_1/screens/Home/select_list_controller.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:get/get.dart';

class FilterSearchHome extends StatelessWidget {
  var controller = Get.put(SelectedListController());
  FilterSearchHome({
    Key? key,
  }) : super(key: key);

  get selectedUserList => 0;
  List<String> defaultList = [
    'Lacteos',
    'carnes',
    'limpieza',
    'Jardin',
    'Congelados',
    'Juguetes',
    'Computacion',
    'Optica',
  ];
  void openFilterDialog(context) async {
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
