import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_flutter_tryout/data/data_sources/data_source.dart';
import 'package:retrofit_flutter_tryout/data/repository/data_repository.dart';
import 'package:retrofit_flutter_tryout/view/state/view_model.dart';
import 'package:retrofit_flutter_tryout/view/ui/view.dart' show MyHomePage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewModel(dataRepo)),
        /// other provider
      ],
      child: MaterialApp(
        title: 'app with repository layer',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

/// this can be singleton
var dataRepo = DataRepository(DataSource(Dio()));
