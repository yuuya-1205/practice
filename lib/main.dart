import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:practice_app/firebase_options.dart';
import 'package:practice_app/top_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _setupFlavor();
  final firebase = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print(firebase.options);
  runApp(const MyApp());
}

Future _setupFlavor() async {
  const flavor = String.fromEnvironment('flavor');

  if (flavor == '') {
    throw ArgumentError('Not available flavor');
  }
  print(kDebugMode);

  ///デバックモードかどうか見ている。trueはデバックモード
  if (kDebugMode) {
    print('FLAVOR: $flavor');

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    print('appName: $appName');
    print('packageName: $packageName');
    print('version: $version');
    print('buildNumber: $buildNumber');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TopPage(),
    );
  }
}


///現状、flutter run --dart-define-from-file=dart_defines/dev.jsonコマンドでrunはできた。
///これはいつものやり方ではない。実行でやるためにはどうすればいいか？
///
///環境分けができているのを確認する方法が知りたい。
///
///
///devのみで作る。（Firebase）
