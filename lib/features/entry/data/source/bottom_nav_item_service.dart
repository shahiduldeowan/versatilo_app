import '../../../../core/constants/assets_constants.dart';
import '../models/nav_item_model.dart';
import '../models/rive_model.dart';

List<NavItemModel> bottomNavItems = [
  NavItemModel(
    title: 'Home',
    rive: RiveModel(
      src: AssetsConstants.navIcon,
      artboard: 'HOME',
      stateMachineName: 'HOME_Interactivity',
    ),
  ),
  NavItemModel(
    title: 'Search',
    rive: RiveModel(
      src: AssetsConstants.navIcon,
      artboard: 'SEARCH',
      stateMachineName: 'SEARCH_Interactivity',
    ),
  ),
  NavItemModel(
    title: 'Notification',
    rive: RiveModel(
      src: AssetsConstants.navIcon,
      artboard: 'BELL',
      stateMachineName: 'BELL_Interactivity',
    ),
  ),
  NavItemModel(
    title: 'Profile',
    rive: RiveModel(
      src: AssetsConstants.navIcon,
      artboard: 'USER',
      stateMachineName: 'USER_Interactivity',
    ),
  ),
];
