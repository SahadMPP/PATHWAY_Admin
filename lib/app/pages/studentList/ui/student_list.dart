import 'package:flutter/material.dart';
import 'package:pathway_admin/app/data/middleware/admin_api.dart';
import 'package:pathway_admin/app/data/models/student.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
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
                heddigText: 'Students',
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
                    flex: 2,
                    child: SizedBox(
                        height: 30, child: Text('Name', style: titles))),
                Expanded(
                    flex: 2,
                    child: SizedBox(
                        height: 30, child: Text('Mail', style: titles))),
                Expanded(
                    child: SizedBox(
                        height: 30, child: Text('Mobile', style: titles))),
                Expanded(
                    child: SizedBox(
                        height: 30, child: Text('Status', style: titles))),
                Expanded(
                    child: SizedBox(
                        height: 30, child: Text('Course', style: titles))),
                Expanded(
                    child: SizedBox(
                        height: 30, child: Text('Order Value', style: titles))),
                Expanded(
                    child: SizedBox(
                        height: 30, child: Text('Permission', style: titles))),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: FutureBuilder(
                future: AdminApi.getStudents(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    List<Student> student = snapshot.data;
                    if (student.isEmpty) {
                      return const Center(child: Text("List is empty"));
                    } else {
                      return ListView.builder(
                        itemCount: student.length,
                        itemBuilder: (context, index) {
                          bool isActive = student[index].active;
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: 30,
                                      child: Row(
                                        children: [
                                          Text('${index + 1}'),
                                          const SizedBox(width: 5),
                                          const CircleAvatar(
                                            radius: 16,
                                          ),
                                          const SizedBox(width: 10),
                                          Text(student[index].name,
                                              style: titles.copyWith(
                                                  color: const Color.fromARGB(
                                                      158, 33, 149, 243))),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(student[index].email,
                                            style: titlesvalue))),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                            "${student[index].mobNumber}",
                                            style: titlesvalue))),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: isActive
                                              ? Colors.green[200]
                                              : Colors.red[200],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              width: .5,
                                              color: const Color.fromARGB(
                                                  255, 24, 128, 27))),
                                      child: Center(
                                        child: isActive
                                            ? Text("Active",
                                                style: titlesvalue.copyWith(
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white))
                                            : Text("DeActive",
                                                style: titlesvalue.copyWith(
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                          "${student[index].lessonId!.length}",
                                          style: titlesvalue,
                                        ))),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Text(
                                            "${student[index].orderValue}",
                                            style: titlesvalue))),
                                Expanded(
                                    child: SizedBox(
                                        height: 30,
                                        child: Container(
                                            width: 100,
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (isActive) {
                                                    isActive = false;
                                                  } else {
                                                    isActive = true;
                                                  }
                                                });
                                              },
                                              child: Icon(
                                                Icons.person_add_disabled,
                                                color: isActive
                                                    ? Colors.black
                                                    : const Color.fromARGB(
                                                        255, 255, 17, 0),
                                              ),
                                            ))))
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
