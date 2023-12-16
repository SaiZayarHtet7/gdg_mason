import 'dart:io';

import 'package:mason/mason.dart';
// import 'dart:io';

Future<void> run(HookContext context) async {
  final appDirectory = Directory('${Directory.current.path}');
  // Get the last index of the slash
  int lastSlashIndex = appDirectory.path.lastIndexOf('/');
  print(lastSlashIndex);

// Extract the substring from the beginning to the last slash
  String desiredPath = appDirectory.path.substring(0, lastSlashIndex + 1);
  final cdCommand = 'cd $desiredPath';
  print(cdCommand);

  final useState = context.vars["state_management"];
  /// checking the state is used or not 
  if(useState != "none"){

  final blocCommand = '$cdCommand && flutter pub add bloc';
  print("installing bloc \n$blocCommand");
  await Process.run('bash', ['-c', blocCommand]);

  final flutterBlocCommand = '$cdCommand && flutter pub add flutter_bloc';
  print("installing flutter bloc \n$flutterBlocCommand");
  await Process.run('bash', ['-c', flutterBlocCommand]);

  bool useEquatable = context.vars["use_equatable"];
  final equatableCommand = '$cdCommand && flutter pub add equatable';

  if (useEquatable) {
    print("running equatable command");
    await Process.run('bash', ['-c', equatableCommand]);
  }
  }

  // Get dependencies

  await Process.run('bash', ['-c', '$cdCommand && flutter pub get']);
}
