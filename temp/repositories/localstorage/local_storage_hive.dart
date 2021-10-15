import 'dart:async';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'local_storage_interface.dart';

class LocalStorageHive implements ILocalStorage {
  Completer<Box> _instance = Completer<Box>();

  _init() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    final Box box = await Hive.openBox('db-digital-pricing');
    _instance.complete(box);
  }

  LocalStorageHive() {
    _init();
  }

  @override
  Future delete(String key) async {
    final Box<dynamic> box = await _instance.future;
    box.delete(key);
  }

  @override
  Future<dynamic> get(String key) async {
    final Box<dynamic> box = await _instance.future;
    return box.get(key);
  }

  @override
  Future put(String key, dynamic value) async {
    final Box<dynamic> box = await _instance.future;
    box.put(key, value);
  }
}
