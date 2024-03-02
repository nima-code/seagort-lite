import 'dart:ffi';
import 'dart:io';
// import 'dart:isolate';
import 'package:path/path.dart' as p;
import 'utilities/system.dart';

DynamicLibrary readLibrary() {
  String libraryPath;
  if (Platform.isWindows) {
    libraryPath = Uri.file(p.join('bridge', 'windows', 'libseagort.dll'), windows: true).path;
  } else if (Platform.isLinux) {
    libraryPath = p.join('bridge', 'linux', 'libseagort.so');
  } else if (Platform.isMacOS) {
    if (SystemArchitecture.isAMD) {
      libraryPath = p.join('bridge', 'mac_intel', 'libseagort.dylib');
    } else {
      libraryPath = p.join('bridge', 'mac_arm', 'libseagort.so');
    }
  } else {
    libraryPath = p.join('bridge', 'linux', 'libseagort.so');
  }
  return DynamicLibrary.open(libraryPath);
}

