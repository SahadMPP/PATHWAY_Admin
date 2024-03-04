import 'package:flutter/material.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';
import 'package:pathway_admin/app/pages/side%20view/ui/side_view.dart';

// import 'package:google_fonts/google_fonts.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(flex:2,child:SideBord(height: height)),
            Expanded(flex:6,child: Dashboard(height: height))
          ],
        ),
      ),
    );
  }
}