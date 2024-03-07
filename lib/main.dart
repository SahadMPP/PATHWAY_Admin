import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pathway_admin/app/pages/login/ui/login.dart';
import 'package:pathway_admin/app/pages/side%20view/bloc/sideview_bloc.dart';
import 'package:pathway_admin/app/pages/teacherList/bloc/teacher_list_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SideviewBloc()),
        BlocProvider(create: (context) => TeacherListBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
