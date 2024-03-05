import 'package:flutter/material.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';
import 'package:pathway_admin/app/pages/widget/teacher_req_card.dart';

class RequestList extends StatefulWidget {
  const RequestList({super.key});

  @override
  State<RequestList> createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    var titles = const TextStyle(
        color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 12);
    var titlesvalue = const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
                alignment: Alignment.topCenter,
                child: Header(
                  heddigText: 'Teachers Request',
                )),
            const SizedBox(height: 30),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Name", style: titles),
                          const SizedBox(width: 150),
                          Text("Email", style: titles),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 20, left: 20, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 25, child: Text('${index + 1}')),
                                  const SizedBox(width: 5),
                                  const CircleAvatar(
                                    radius: 16,
                                  ),
                                  const SizedBox(width: 10),
                                  Text("Arun Kumar",
                                      style: titles.copyWith(
                                          color: const Color.fromARGB(
                                              158, 33, 149, 243))),
                                ],
                              ),
                            ),
                            const SizedBox(width: 50),
                            SizedBox(
                                child: Text("Arunki@gmail.com",
                                    style: titlesvalue)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                
                Visibility(visible: isVisible,child: const TeacherForm())
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TeacherForm extends StatelessWidget {
  const TeacherForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .35,
      height: MediaQuery.of(context).size.height,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(18),
      color: Colors.grey[100],
    
          ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const BuildTutorApplicationCard(
                content: "teacher.name", title: "Name"),
            const BuildTutorApplicationCard(
                content: "teacher.mobNumber",
                title: "Mobile Number"),
            const BuildTutorApplicationCard(
                content: "teacher.appledSubject!",
                title: "Subject"),
            const BuildTutorApplicationCard(
                content: "teacher.experience!",
                title: "Experience"),
            const BuildTutorApplicationCard(
                content: "teacher.universityName!",
                title: "University"),
            const BuildTutorApplicationCard(
                content: "teacher.universityPlace!",
                title: "University Place"),
            const BuildTutorApplicationCard(
                content: "teacher.universityState!",
                title: "State"),
            const BuildTutorApplicationCard(
                content: "teacher.officerName!",
                title: "Chief administrative officer"),
            const Text(
              "Certificates",
              style: TextStyle(color: Colors.grey, height: .5),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Image(
                      image: AssetImage(
                          "assets/images/images(adding icon).png")),
                ),
                Container(
                  padding: const EdgeInsets.all(8),

                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),

                      borderRadius: BorderRadius.circular(15)),
                  child: const Image(
                      image: AssetImage(
                          "assets/images/images(adding icon).png")),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "chief administrative officer signature",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 202, 202, 202),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.yellow[100],
                  child: const Center(
                      child: Text("Signature not added"))),
            ),
            const SizedBox(height: 10),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildSmallButtonAdmin(
                      function: () {},
                      color: Colors.blue[500]!,
                      text: "Accept"),
                  BuildSmallButtonAdmin(
                      function: () {},
                      color: Colors.red[500]!,
                      text: "Reject"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
