/// 响应式工具类
/// 提供根据屏幕宽度适配UI元素尺寸的方法
import 'package:flutter/widgets.dart';

class ResponsiveHelper {
  /// 根据屏幕宽度返回emoji大小
  /// [screenWidth] - 当前屏幕宽度
  static double getEmojiSize(double screenWidth) {
    if (screenWidth > 900) {
      return 120;
    } else if (screenWidth > 600) {
      return 100;
    } else {
      return 80;
    }
  }

  /// 根据屏幕宽度返回垂直间距
  /// [screenWidth] - 当前屏幕宽度
  static double getSpacing(double screenWidth) {
    if (screenWidth > 900) {
      return 48;
    } else if (screenWidth > 600) {
      return 40;
    } else {
      return 24;
    }
  }
}