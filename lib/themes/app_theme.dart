/// 应用主题配置类
/// 负责管理应用的浅色/深色主题及相关样式
import 'package:flutter/material.dart';

class AppTheme {
  /// 根据当前亮度模式返回对应的主题数据
  static ThemeData getTheme(Brightness brightness) {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink,
        brightness: brightness,
        background: brightness == Brightness.light ? const Color(0xFFFFFFFF) : const Color(0xFF121212),
      ),
    );
  }
}