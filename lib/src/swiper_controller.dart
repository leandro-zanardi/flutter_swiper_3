import 'package:flutter_swiper_3/src/swiper_plugin.dart';
import 'package:flutter_swiper_3/src/transformer_page_view/index_controller.dart';

class SwiperController extends IndexController {
  // Autoplay is started
  static const int START_AUTOPLAY = 2;

  // Autoplay is stopped.
  static const int STOP_AUTOPLAY = 3;

  // Indicate that the user is swiping
  static const int SWIPE = 4;

  // Indicate that the `Swiper` has changed it's index and is building it's ui ,so that the
  // `SwiperPluginConfig` is available.
  static const int BUILD = 5;

  // available when `event` == SwiperController.BUILD
  SwiperPluginConfig? config;

  // available when `event` == SwiperController.SWIPE
  // this value is PageViewController.pos
  double? pos;

  int index = 0;
  bool animation = false;
  bool? autoplay;

  SwiperController();

  void startAutoplay() {
    event = SwiperController.START_AUTOPLAY;
    this.autoplay = true;
    notifyListeners();
  }

  void stopAutoplay() {
    event = SwiperController.STOP_AUTOPLAY;
    this.autoplay = false;
    notifyListeners();
  }
}
