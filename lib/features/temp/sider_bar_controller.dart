import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/home/view/home_page.dart';
import 'package:get/get.dart';

class SiderBarController extends GetxController {
  RxInt index = 0.obs;

  var pages = [HomePage(), Hello(), Hello()];
}
