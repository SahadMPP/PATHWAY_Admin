import 'package:flutter/material.dart';
import 'package:pathway_admin/app/data/middleware/admin_api.dart';
import 'package:pathway_admin/app/data/models/teacher.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';

class TeacherList extends StatefulWidget {
  const TeacherList({super.key});

  @override
  State<TeacherList> createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  @override
  Widget build(BuildContext context) {
    bool isActive = true;
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
                heddigText: 'Teachers',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                Text("Name", style: titles),
                Text("Mobile", style: titles),
                Text("Email", style: titles),
                Text("Status", style: titles),
                Text("LessonCount", style: titles),
                Text("Totel Value", style: titles),
                Text("Change", style: titles),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: FutureBuilder(
              future: AdminApi.getTeacher(),
              builder: (context,AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  List<Teacher> teacher = snapshot.data;
                  if (teacher.isEmpty) {
                  return const Center(child: Text("List is Empty"));
                  }else{
                     return ListView.builder(
                      itemCount: teacher.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 160,
                            child: Row(
                              children: [
                                SizedBox(width: 25, child: Text('${index + 1}')),
                                const SizedBox(width: 5),
                                const CircleAvatar(
                                  radius: 16,
                                ),
                                const SizedBox(width: 10),
                                Text(teacher[index].name,
                                    style: titles.copyWith(
                                        color: const Color.fromARGB(
                                            158, 33, 149, 243))),
                              ],
                            ),
                          ),
                          SizedBox(
                              width: 100,
                              child: Text('${teacher[index].mobNumber ?? 0}', style: titlesvalue)),
                          SizedBox(
                              width: 140,
                              child: Text(teacher[index].email, style: titlesvalue.copyWith(fontSize: 10))),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 50,
                            child: Container(
                              height: 20,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: isActive ? Colors.green[200]:Colors.red[200],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: .5,
                                      color:
                                          const Color.fromARGB(255, 24, 128, 27))),
                              child: Center(
                                child:isActive ? Text("Active",
                                    style: titlesvalue.copyWith(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)) :  Text("DeActive",
                                    style: titlesvalue.copyWith(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 30),
                          SizedBox(
                              width: 90,
                              child: Text("${teacher[index].subjects!.length}",
                                  style: titlesvalue, textAlign: TextAlign.center)),
                          SizedBox(
                              width: 60,
                              child: Text('${teacher[index].moneyMade ?? 10}',
                                  style: titlesvalue, textAlign: TextAlign.right)),
                          Container(
                              width: 100,
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if (isActive) {
                                      isActive = false;
                                    } else {
                                      isActive = true;                     
                                    }
                                  });
                                },
                                child: Icon(
                                isActive ? Icons.person_add: Icons.person_add_disabled,
                                  color: isActive ? Colors.black : const Color.fromARGB(255, 255, 17, 0),
                                ),
                              ))
                        ],
                      ),
                    );
                  },
                );
                  }
                }
               
              }
            ),
          )
        ],
      ),
    );
  }
}
