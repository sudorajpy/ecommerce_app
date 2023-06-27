import 'package:ecommerce_app/components/info_card.dart';
import 'package:ecommerce_app/components/side_menu_tile.dart';
import 'package:ecommerce_app/models/rive_asset.dart';
import 'package:ecommerce_app/utils/rive_utils.dart';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  RiveAssets selectedMenu = sideMenus.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: const Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            children: [
              const InfoCard(
                name: 'Raj Singh',
                profession: 'Flutter Developer',
              ),
              // rive assets for animated icons
              ...sideMenus.map((menu) => SideMenuTile(
                    menu: menu,
                    riveonInit: (artboard) {
                      StateMachineController controller =
                          RiveUtils.getRiveController(artboard,
                              stateMachineName: menu.stateMachineName);
                      menu.input = controller.findSMI("active") as SMIBool;
                    },
                    press: () {
                      menu.input!.change(true);
                      Future.delayed(const Duration(seconds: 1), () {
                        menu.input!.change(false);
                      });
                      setState(() {
                        selectedMenu = menu;
                      });
                    },
                    isActive: selectedMenu == menu,

                  )),
            ],
          ),
        ),
      ),
    );
  }
}
