import 'package:flutter/material.dart';
import 'package:mydoctor/core/routing/app_router.dart';

import 'core/di/dependency_injection.dart';
import 'doc_app.dart';

void main() {
  setupGetit();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
