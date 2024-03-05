import 'package:flutter/material.dart';
import 'package:pathway_admin/app/pages/complaint/ui/complaint_ui.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';
import 'package:pathway_admin/app/pages/profile/ui/profile.dart';
import 'package:pathway_admin/app/pages/requestList/ui/requestlist.dart';
import 'package:pathway_admin/app/pages/settings/setting_ui.dart';
import 'package:pathway_admin/app/pages/side%20view/ui/side_view.dart';
import 'package:pathway_admin/app/pages/studentList/ui/student_list.dart';
import 'package:pathway_admin/app/pages/teacherList/ui/teacher_list.dart';

int selectedIndexMain = 2;
  List<Widget> pages =[
    const Dashboard(),
    const StudentList(),
    const TeacherList(),
    const RequestList(),
    const ComplaintList(),
    const Settings(),
    const Profile(),
  ];
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Expanded(flex:2,child:SideBord()),
            Expanded(flex:8,child: pages[selectedIndexMain])
          ],
        ),
      ),
    );
  }
}