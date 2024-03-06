import 'package:flutter/material.dart';
import 'package:pathway_admin/app/core/colors/colors.dart';
import 'package:pathway_admin/app/pages/side%20view/bloc/sideview_bloc.dart';
import 'package:pathway_admin/app/pages/widget/side_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideBord extends StatefulWidget {
  const SideBord({
    super.key,
  });

  @override
  State<SideBord> createState() => _SideBordState();
}

class _SideBordState extends State<SideBord> {
  bool isSelected = true;
  int selectedIndex = 0;

  List<Map<String, dynamic>> items = [
    {"icons": Icons.dashboard_outlined, "title": "Dashboard"},
    {"icons": Icons.person_outline, "title": "Students"},
    {"icons": Icons.person_2_outlined, "title": "Teachers"},
    {"icons": Icons.subject, "title": "Subjects"},
    {"icons": Icons.event_note_outlined, "title": "Requests"},
    {"icons": Icons.note_outlined, "title": "Complaint"},
    {"icons": Icons.settings_outlined, "title": "Setting"},
    {"icons": Icons.folder_shared_outlined, "title": "Profile"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding * 3,
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 34, 145, 236),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "PATHWAY",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 50),
            const Text(
              "Main",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 290,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: BlocBuilder<SideviewBloc, SideviewState>(
                      builder: (context, state) {
                        return SideBarCondent(
                            index: index,
                            selectedIndex: state.selectedIndex,
                            isSelected: state.isSelected,
                            function: () {
                              context.read<SideviewBloc>().add(
                                  SideviewEvent.selectionSection(index: index));
                            },
                            text: items[index]['title'],
                            icon: items[index]['icons']);
                      },
                    ),
                  );
                },
              ),
            ),
            const Text(
              "Help",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: BlocBuilder<SideviewBloc, SideviewState>(
                      builder: (context, state) {
                        return SideBarCondent(
                            index: index + 5,
                            selectedIndex: state.selectedIndex,
                            isSelected: state.isSelected,
                            function: () {
                              setState(() {  
                                 context.read<SideviewBloc>().add(
                                  SideviewEvent.selectionSection(index: index+5));
                              });
                            },
                            text: items[index + 6]['title'],
                            icon: items[index + 6]['icons']);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
