
import 'package:flutter/material.dart';
import 'package:pathway_admin/app/core/colors/colors.dart';
import 'package:pathway_admin/app/pages/widget/side_bar.dart';

class SideBord extends StatelessWidget {
  const SideBord({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding * 3,
      ),
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "PATHWAY",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Main",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            SideBarCondent(
                function: () {},
                text: "Dashboard",
                icon: Icons.dashboard_outlined),
            const SizedBox(height: 10),
            SideBarCondent(
                function: () {},
                text: "Students",
                icon: Icons.person_outline),
            const SizedBox(height: 10),
            SideBarCondent(
                function: () {},
                text: "Teachers",
                icon: Icons.person_2_outlined),
            const SizedBox(height: 10),
            SideBarCondent(
                function: () {},
                text: "Request",
                icon: Icons.event_note_outlined),
            const SizedBox(height: 10),
            SideBarCondent(
                function: () {},
                text: "Complaints",
                icon: Icons.note_outlined),
            const SizedBox(height: 20),
            const Text(
              "Help",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            SideBarCondent(
                function: () {},
                text: "Settings",
                icon: Icons.settings_outlined),
            SideBarCondent(
                function: () {},
                text: "profile",
                icon: Icons.folder_shared_outlined),
          ],
        ),
      ),
    );
  }
}

