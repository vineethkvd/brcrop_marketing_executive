import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../../../../features/home/view/home_screen.dart';
import '../../../../features/product/view/product_screen.dart';
import '../../../../features/user/view/user_screen.dart';
import '../../cart/view/cart_screen.dart';



class BottomNavBarController extends GetxController {
  var selectedIndex = 0.obs;
  var screens = [
    const HomeScreen(),
    const ProductScreen(),
    const CartScreens(),
    const UserScreen()
  ];
  void updateIndex({required int index}) {
    selectedIndex.value = index;
  }
}
