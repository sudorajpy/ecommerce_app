import 'package:rive/rive.dart';

// class RiveUtils {
//   static SMIBool getRiveController(Artboard artboard,
//       {required String stateMachineName}) {
//     StateMachineController? controller =
//         StateMachineController.fromArtboard(artboard, stateMachineName);

//     artboard.addController(controller!);

//     return controller.findInput<bool>("active") as SMIBool;
//   }
// }

//   static void chnageSMIBoolState(SMIBool input) {
//     input.change(true);
//     Future.delayed(
//       const Duration(seconds: 1),
//       () {
//         input.change(false);
//       },
//     );
//   }
// }

class RiveUtils{
  static StateMachineController getRiveController(Artboard artboard,
  {stateMachineName = "State Machine 1"}){
    StateMachineController? controller = StateMachineController.fromArtboard(artboard, stateMachineName);
    artboard.addController(controller!);
    return controller;
  }
}