import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter_application_1/screens/Products/select_list_controller.dart';
import 'package:get/get.dart';

class FilterHomeScreen extends StatelessWidget {
  const FilterHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFilterPage(),
    );
  }
}

List<String> defaultList = [
  'Lacteos',
  'carnes',
  'limpieza',
  'test1',
  'test2',
  'test3',
  'test4',
];

class MyFilterPage extends StatelessWidget {
  var controller = Get.put(SelectedListController());
  MyFilterPage({Key? key}) : super(key: key);

  get selectedUserList => 0;

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
              child: Obx(() => controller.selectedList.value.length == 0
                  ? Text('Categorias')
                  : Wrap(
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
