import 'package:flutter/material.dart';
import 'package:pathway_admin/app/core/colors/colors.dart';
import 'package:pathway_admin/app/pages/main_screen.dart';
import 'package:pathway_admin/app/pages/widget/side_bar.dart';

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
              height: 270,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SideBarCondent(
                        index: index,
                        selectedIndex: selectedIndex,
                        isSelected: isSelected,
                        function: () {
                          setState(() {
                            selectedIndex = index;
                            isSelected = !isSelected;
                            selectedIndexMain = selectedIndex;
                            print(selectedIndexMain);

                          });
                        },
                        text: items[index]['title'],
                        icon: items[index]['icons']),
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
                    child: SideBarCondent(
                        index: index + 5,
                        selectedIndex: selectedIndex,
                        isSelected: isSelected,
                        function: () {
                          setState(() {
                            selectedIndex = index + 5;
                            isSelected = !isSelected;
                            selectedIndexMain = selectedIndex;
                          });
                        },
                        text: items[index + 5]['title'],
                        icon: items[index + 5]['icons']),
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
