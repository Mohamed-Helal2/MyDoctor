import 'package:flutter/material.dart';
import 'package:mydoctor/core/routing/app_router.dart';

import 'doc_app.dart';

void main() {
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}


