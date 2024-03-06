
import 'package:flutter/material.dart';


class TutorsApplicationDetile extends StatelessWidget {

  const TutorsApplicationDetile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            alignment: Alignment.center,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.secondary, width: 3),
              boxShadow: const [
                BoxShadow(blurRadius: .5),
              ],
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> const AdminBotmNavi()));
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                )),
          ),
        ),
        title: const Text(
          "headline",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const BuildTutorApplicationCard(
                      content: "teacher.name", title: "Name"),
                  const BuildTutorApplicationCard(
                      content: "teacher.mobNumber", title: "Mobile Number"),
                  const BuildTutorApplicationCard(
                      content: "teacher.appledSubject!", title: "Subject"),
                  const BuildTutorApplicationCard(
                      content: "teacher.experience!", title: "Experience"),
                  const BuildTutorApplicationCard(
                      content: "teacher.universityName!", title: "University"),
                  const BuildTutorApplicationCard(
                      content: "teacher.universityPlace!",
                      title: "University Place"),
                  const BuildTutorApplicationCard(
                      content: "teacher.universityState!", title: "State"),
                  const BuildTutorApplicationCard(
                      content: "teacher.officerName!",
                      title: "Chief administrative officer"),
                  const Text(
                    "Certificates",
                    style: TextStyle(
                        color: Colors.grey, height: .5),
                  ),
                 Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
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
                  // Container(
                  //   height: 150,
                  //   width: double.infinity,
                  //   color: Colors.yellow[100],
                  //   child: teacher.signatureImage == null
                  //       ? const Center(child: Text("Signature not added"))
                  //       : Image(
                  //           image: MemoryImage(decodedSignature),
                  //           fit: BoxFit.cover),
                  // ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              height: 90,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildSmallButtonAdmin(
                      function: () {
                     
                      },
                      color: Colors.blue[500]!,
                      text: "Accept"),
                  BuildSmallButtonAdmin(
                      function: () {
                       
                      },
                      color: Colors.red[500]!,
                      text: "Reject"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildSmallButtonAdmin extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback function;
  const BuildSmallButtonAdmin({
    super.key,
    required this.text,
    required this.color,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
     
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(color),
              shape: const MaterialStatePropertyAll(BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3))))),
          onPressed: function,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}

class BuildTutorApplicationCard extends StatelessWidget {
  final String title;
  final String content;

  const BuildTutorApplicationCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.grey, height: .5),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              content,
              style:TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
