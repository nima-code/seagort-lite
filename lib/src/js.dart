import 'dart:io' as io;
import 'package:seagort/src/lib/compile.dart';

String compileJS(String js) => compileJavaSript(js);

String compileJSFile(String path) => compileJavaSript(io.File(path).readAsStringSync());

Future<String> compileJSAsync(String js) async => compileJavaScriptAsync(js);

Future<String> compileJSFileAsync(String path) async => compileJavaScriptAsync(await io.File(path).readAsString());