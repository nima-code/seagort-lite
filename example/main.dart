import 'dart:ffi';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:seagort/seagort.dart';

void main() {
  var libraryPath = path.join(Directory.current.path, 'tools', 'awesome.so');
  // if (Platform.isMacOS) {
  //   libraryPath = path.join(
  //       Directory.current.path, 'primitives_library', 'libprimitives.dylib');
  // }
  // if (Platform.isWindows) {
  //   libraryPath = path.join(
  //       Directory.current.path, 'primitives_library', 'Debug', 'primtives.dll');
  // }
  DynamicLibrary.open(libraryPath);
  print(add(2, 1));
}