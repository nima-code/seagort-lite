import 'dart:ffi';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:seagort/seagort.dart';
import 'package:seagort/src/js.dart';

void main() {
  print(compileJS('''

let b = 2;

let a = 1;
'''));
}