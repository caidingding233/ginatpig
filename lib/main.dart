/// 应用主入口文件
/// 包含MyApp根组件和HomePage主页面
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'themes/app_theme.dart';
import 'utils/responsive_helper.dart';

/// 应用根组件
class MyApp extends StatelessWidget {
  /// 创建应用根组件
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '大猪',
      theme: AppTheme.getTheme(Brightness.light),
      darkTheme: AppTheme.getTheme(Brightness.dark),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

/// 应用主页面
class HomePage extends StatefulWidget {
  /// 创建主页面
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _updateSystemUIOverlay();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateSystemUIOverlay();
  }

  /// 根据当前主题更新系统状态栏样式
  void _updateSystemUIOverlay() {
    final brightness = Theme.of(context).brightness;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: brightness == Brightness.light
          ? Brightness.dark
          : Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final emojiSize = ResponsiveHelper.getEmojiSize(screenWidth);
    final spacing = ResponsiveHelper.getSpacing(screenWidth);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '🐷',
                style: TextStyle(fontSize: emojiSize),
              ),
              SizedBox(height: spacing),
              Text(
                '大猪',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
