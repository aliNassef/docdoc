import 'package:docdoc/core/api/service_locator.dart';
import 'package:docdoc/core/cache/cache_helper.dart';
import 'package:docdoc/doc_doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await ScreenUtil.ensureScreenSize();

  await CacheHelper().init();
  setupGetIt();
  runApp(const DocDoc());
}
