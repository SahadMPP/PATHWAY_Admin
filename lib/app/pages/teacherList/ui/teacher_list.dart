import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pathway_admin/app/data/middleware/admin_api.dart';
import 'package:pathway_admin/app/data/models/teacher.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';
import 'package:pathway_admin/app/pages/teacherList/bloc/teacher_list_bloc.dart';

class TeacherList extends StatefulWidget {
  const TeacherList({super.key});

  @override
  State<TeacherList> createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  @override
  Widget build(BuildContext context) {
    
    context.read<TeacherListBloc>().add(const TeacherListEvent.giveingInitialValue());
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
                onChanged: (value) {
                  context.read<TeacherListBloc>().add(TeacherListEvent.filterValue(typeText: value));
                },
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
                        height: 30,
                        child: Text('LessionCount', style: titles))),
                Expanded(
                    child: SizedBox(
                        height: 30, child: Text('OrderValue', style: titles))),
                Expanded(
                    child: SizedBox(
                        height: 30, child: Text('Permission', style: titles))),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: FutureBuilder(
                future: AdminApi.getTeacher(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    List<Teacher> teacher = snapshot.data;
                    if (teacher.isEmpty) {
                      return const Center(child: Text("List is Empty"));
                    } else {
                      return BlocBuilder<TeacherListBloc, TeacherListState>(
                        builder: (context, state) {
                          return ListView.builder(
                            itemCount: state.list.length,
                            itemBuilder: (context, index) {
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
                                              const SizedBox(width: 10),
                                              const CircleAvatar(
                                                radius: 16,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(state.list[index].name,
                                                  style: titles.copyWith(
                                                      color:
                                                          const Color.fromARGB(
                                                              158,
                                                              33,
                                                              149,
                                                              243)))
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                            height: 30,
                                            child: Text(state.list[index].email,
                                                style: titlesvalue))),
                                    Expanded(
                                        child: SizedBox(
                                            height: 30,
                                            child: Text(
                                                "${state.list[index].mobNumber}",
                                                style: titlesvalue))),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white))
                                                : Text("DeActive",
                                                    style: titlesvalue.copyWith(
                                                        fontSize: 8,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: SizedBox(
                                            height: 30,
                                            child: Text(
                                              "${state.list[index].subjects!.length}",
                                              style: titlesvalue,
                                            ))),
                                    Expanded(
                                        child: SizedBox(
                                            height: 30,
                                            child: Text(
                                                // "${teacher[index].moneyMade}",
                                                "0",
                                                style: titlesvalue))),
                                    Expanded(
                                        child: SizedBox(
                                            height: 30,
                                            child: Container(
                                                width: 100,
                                                alignment:
                                                    Alignment.centerRight,
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
