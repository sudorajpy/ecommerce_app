import 'package:rive/rive.dart';

class RiveAssets {
  final String artboardName, stateMachineName, title, src;
  late SMIBool? input;

  RiveAssets(
    this.src,{
    required this.artboardName,
    required this.stateMachineName,
    required this.title,
    this.input,
  });

  set setInput(SMIBool status){
    input = status;
  }
}


List<RiveAssets> sideMenus = [
RiveAssets(
  "assets/riveAssets/home_icons.riv", 
  artboardName: "HOME", 
  stateMachineName: "HOME_interactivity", 
  title: "Home", ),

  RiveAssets(
  "assets/riveAssets/home_icons.riv", 
  artboardName: "SEARCH", 
  stateMachineName: "SEARCH_interactivity", 
  title: "Search", ),

  RiveAssets(
  "assets/riveAssets/home_icons.riv", 
  artboardName: "LIKE/STAR", 
  stateMachineName: "STAR_interactivity", 
  title: "Favrouits", ),

  RiveAssets(
  "assets/riveAssets/home_icons.riv", 
  artboardName: "SETTINGS", 
  stateMachineName: "SETTINGS_interactivity", 
  title: "Settings", ),

  RiveAssets(
  "assets/riveAssets/home_icons.riv", 
  artboardName: "CHAT", 
  stateMachineName: "CHAT_interactivity", 
  title: "Help", ),
];