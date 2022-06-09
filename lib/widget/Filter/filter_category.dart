import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Products/select_list_controller.dart';
import 'package:flutter_application_1/widget/FliterSearch/filter_search.dart';
import 'package:get/get.dart';

class MyFilterPage extends StatelessWidget {
  var controller = Get.put(SelectedListController());
  MyFilterPage({Key? key}) : super(key: key);

  get selectedUserList => 0;
  List<String> defaultList = [
    'Lacteos',
    'carnes',
    'limpieza',
    'Jardin',
    'Congelados',
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
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
              child: Obx(() => Wrap(
                    children: controller.selectedList.value
                        .map((String e) => Padding(
                              padding: const EdgeInsets.all(8),
                              child: Chip(
                                label: Text(e),
                              ),
                            ))
                        .toList(),
                  )),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => openFilterDialog(context),
            )));
  }
}
