import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/widget/Txt.dart';

class Route {
  final String label;
  final String route;
  Route(this.label, this.route);
}

class CDM {
  final IconData icon;
  final Route title;
  final List<Route> submenus;

  CDM(this.icon, this.title, this.submenus);
}

class ComplexDrawer extends StatefulWidget {
  const ComplexDrawer({Key? key}) : super(key: key);

  @override
  _ComplexDrawerState createState() => _ComplexDrawerState();
}

class _ComplexDrawerState extends State<ComplexDrawer> {
  int selectedIndex = -1; //dont set it to 0

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: row(),
    );
  }

  Widget row() {
    return Row(children: [
      isExpanded ? blackIconTiles() : blackIconMenu(),
      invisibleSubMenus(),
    ]);
  }

  Widget blackIconTiles() {
    return Container(
      width: 210,
      color: const Color(0xff11111d),
      child: Column(
        children: [
          controlTile(),
          Expanded(
            child: ListView.builder(
              itemCount: cdms.length,
              itemBuilder: (BuildContext context, int index) {
                CDM cdm = cdms[index];
                bool selected = selectedIndex == index;
                return ExpansionTile(
                    onExpansionChanged: (z) {
                      setState(() {
                        selectedIndex = z ? index : -1;
                      });
                    },
                    leading: Icon(cdm.icon, color: Colors.white),
                    title: Txt(
                      text: cdm.title.label,
                      color: Colors.white,
                    ),
                    trailing: cdm.submenus.isEmpty
                        ? null
                        : Icon(
                            selected
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                    children: cdm.submenus.map((subMenu) {
                      return sMenuButton(subMenu, false);
                    }).toList());
              },
            ),
          ),
          accountTile(),
        ],
      ),
    );
  }

  Widget controlTile() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: ListTile(
        leading: const FlutterLogo(),
        title: const Txt(
          text: "BodegaAPP",
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        onTap: expandOrShrinkDrawer,
      ),
    );
  }

  Widget blackIconMenu() {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      width: 100,
      color: const Color(0xff11111d),
      child: Column(
        children: [
          controlButton(),
          Expanded(
            child: ListView.builder(
                itemCount: cdms.length,
                itemBuilder: (contex, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: Icon(cdms[index].icon, color: Colors.white),
                    ),
                  );
                }),
          ),
          accountButton(),
        ],
      ),
    );
  }

  Widget invisibleSubMenus() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: isExpanded ? 0 : 125,
      child: Column(
        children: [
          Container(height: 95),
          Expanded(
            child: ListView.builder(
                itemCount: cdms.length,
                itemBuilder: (context, index) {
                  CDM cmd = cdms[index];
                  bool selected = selectedIndex == index;
                  bool isValidSubMenu = selected && cmd.submenus.isNotEmpty;
                  return subMenuWidget(
                      [cmd.title, ...cmd.submenus], isValidSubMenu);
                }),
          ),
        ],
      ),
    );
  }

  Widget controlButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: InkWell(
        onTap: expandOrShrinkDrawer,
        child: Container(
          height: 45,
          alignment: Alignment.center,
          child: const FlutterLogo(
            size: 40,
          ),
        ),
      ),
    );
  }

  Widget subMenuWidget(List<Route> submenus, bool isValidSubMenu) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: isValidSubMenu ? submenus.length.toDouble() * 37.5 : 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isValidSubMenu ? const Color(0xff1d1b31) : Colors.transparent,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )),
      child: ListView.builder(
          padding: const EdgeInsets.all(6),
          itemCount: isValidSubMenu ? submenus.length : 0,
          itemBuilder: (context, index) {
            Route subMenu = submenus[index];
            return sMenuButton(subMenu, index == 0);
          }),
    );
  }

  Widget sMenuButton(Route subMenu, bool isTitle) {
    void navigate(bool isSameRoute, bool canPop) {
      Navigator.of(context).pop();
      if (subMenu.route.isNotEmpty && !isSameRoute) {
        if (canPop) {
          Navigator.pushReplacementNamed(context, subMenu.route);
        } else {
          Navigator.pushNamed(context, subMenu.route);
        }
      }
    }

    return InkWell(
      onTap: () {
        //handle the function
        //if index==0? donothing: doyourlogic here
        String? actualPage = ModalRoute.of(context)?.settings.name;
        bool isSameRoute = actualPage == subMenu.route;
        bool canPop = Navigator.canPop(context) && actualPage != homePage;
        navigate(isSameRoute, canPop);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Txt(
          text: subMenu.label,
          fontSize: isTitle ? 17 : 14,
          color: isTitle ? Colors.white : Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget accountButton({bool usePadding = true}) {
    return Roulette(
      infinite: true,
      child: Padding(
        padding: EdgeInsets.all(usePadding ? 8 : 0),
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.white70,
            image: const DecorationImage(
              image: NetworkImage(
                  "https://cdn.discordapp.com/attachments/502691312261136384/980655098474668103/unknown.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }

  Widget accountTile() {
    return Container(
      color: const Color(0xff1d1b31),
      child: ListTile(
        leading: accountButton(usePadding: false),
        title: const Txt(
          text: "Piroman",
          color: Colors.white,
        ),
        subtitle: const Txt(
          text: "Big Desayuno Boss",
          color: Colors.white70,
        ),
      ),
    );
  }

  static List<CDM> cdms = [
    CDM(Icons.account_circle_sharp, Route("Login", ""), [
      Route("Cerrar Sesion", loginUser),
    ]),
    CDM(Icons.warehouse, Route("Productos", ""),
        [Route("Listado", homePage), Route("", homePage)]),
    CDM(Icons.local_shipping, Route("Proveedores", ""), [
      Route("Activos", activeProvider),
      Route("Inactivos", inactiveProviders),
      Route("Crear proveedor", createProvider),
    ]),
    CDM(Icons.badge, Route("Vendedores", ""), [Route("vendedores", vendor)]),
    CDM(Icons.assignment_rounded, Route("Ordenes", ""), [
      Route("Crear orden", criticalProducts),
      Route("Estado Orden", viewState),
      Route("Productos Criticos", productCritics23),
    ]),
  ];

  void expandOrShrinkDrawer() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }
}
