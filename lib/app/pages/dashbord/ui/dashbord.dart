import 'package:flutter/material.dart';
import 'package:pathway_admin/app/core/colors/colors.dart';
import 'package:pathway_admin/app/pages/widget/chart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: SizedBox(
        height: height,
        child: Column(children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(children: [
                const Header(),
                Expanded(
                  flex: 9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: const EdgeInsets.all(12),
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Totel Protfolio",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                                color: secondaryColor,
                                                fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 15),
                                    const AdminChart()
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: Presentage(),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Top Teacher's",
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              height: 70,
                              width: double.infinity,
                              child: ListView.builder(
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "${index + 1}.",
                                                style: const TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const Text(
                                                "Kumari Amma",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "sold",
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 12,
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "350",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Top Teacher's",
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              height: 70,
                              width: double.infinity,
                              child: ListView.builder(
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "${index + 1}.",
                                                style: const TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const Text(
                                                "Kumari Amma",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "sold",
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 12,
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "350",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Visitor",style: TextStyle(
                          color: secondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                          Text("avrg",style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 12,
                                              ),),
                       

                          const Text("820",style: TextStyle(
                        color: primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        
                      ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class Presentage extends StatelessWidget {
  const Presentage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/person.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.2),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        'Goals',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '-16%',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 12, 184),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                    alignment: Alignment.center,
                    child: CircularPercentIndicator(
                      radius: 70,
                      lineWidth: 7.0,
                      percent: 0.60,
                      center: const Text(
                        '72%',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 12, 184),
                            fontSize: 30,
                            height: 1.2),
                      ),
                      progressColor: const Color.fromARGB(255, 0, 79, 216),
                      backgroundColor: const Color.fromARGB(255, 222, 237, 244),
                    ))
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(110, 129, 199, 132),
                      border: Border.all(width: 1, color: Colors.green),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Order value",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "\$ 1069.92",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    image: AssetImage('assets/images/logop.png'),
                    fit: BoxFit.fill,
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.only(right: 20, left: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Report",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: secondaryColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        "assets/images/person.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sahad Mp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Administrator",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
