import 'package:flutter/material.dart';
import 'package:pathway_admin/app/pages/dashbord/ui/dashbord.dart';

class ComplaintList extends StatefulWidget {
  const ComplaintList({super.key});

  @override
  State<ComplaintList> createState() => _ComplaintListState();
}

class _ComplaintListState extends State<ComplaintList> {
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
                  heddigText: 'Complaints',
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
                            GestureDetector(
                              onTap: () {
                                
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: SizedBox(
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
                Visibility(visible: isVisible,child: const ComplaintCard())
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ComplaintCard extends StatelessWidget {
  const ComplaintCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 110,
            width: double.infinity,
            decoration: const BoxDecoration(
                
                borderRadius:
                    BorderRadius.all(Radius.circular(8))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                ),
                const SizedBox(width: 15),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 200,
                    maxWidth: 230,
                  ),
                  child:  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "complaint[index].title",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
