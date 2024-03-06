import 'package:flutter/material.dart';
import 'package:pathway_admin/app/data/middleware/admin_api.dart';
import 'package:pathway_admin/app/data/models/subject.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';

class SubjectList extends StatefulWidget {
  const SubjectList({super.key});

  @override
  State<SubjectList> createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  @override
  Widget build(BuildContext context) {
    var titles = const TextStyle(
        color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 12);
    var titlesvalue = const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12);
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
              alignment: Alignment.topCenter,
              child: Header(
                heddigText: 'SubjectList',
              )),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(
                maxWidth: 240, maxHeight: 50, minHeight: 20),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    size: 20,
                    color: Colors.grey[500],
                  ),
                  helperStyle: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 5,
                  ),
                  fillColor: Colors.grey[100],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                Expanded(
                    child: SizedBox(
                        height: 30,
                        child: Text(
                          'Subject',
                          style: titles,
                        ))),
                Expanded(
                    child: SizedBox(
                        height: 30,
                        child: Text(
                          'Student',
                          style: titles,
                        ))),
                Expanded(
                    child: SizedBox(
                        height: 30,
                        child: Text(
                          'Teacher',
                          style: titles,
                        ))),
                Expanded(
                    child: SizedBox(
                        height: 30,
                        child: Text(
                          'Lesson',
                          style: titles,
                        ))),
                Expanded(
                    child: SizedBox(
                        height: 30,
                        child: Text(
                          'Order Value',
                          style: titles,
                        )))
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: FutureBuilder(
                future: AdminApi.getSubject(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    List<Subject> subject = snapshot.data;
                    if (subject.isEmpty) {
                      return const Center(child: Text("List is empty"));
                    } else {
                      return ListView.builder(
                        itemCount: subject.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                          subject[index].subject!,
                                          style: titlesvalue,
                                        ))),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                          "${subject[index].countOfStudent}",
                                          style: titlesvalue,
                                        ))),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                          "${subject[index].countOfTeacher}",
                                          style: titlesvalue,
                                        ))),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                          "${subject[index].lessonCount}",
                                          style: titlesvalue,
                                        ))),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                          "${subject[index].orderValue}",
                                          style: titlesvalue,
                                        )))
                              ],
                            ),
                          );
                        },
                      );
                    }
                  }
                }),
          )
        ],
      ),
    );
  }
}
