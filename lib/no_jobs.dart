import 'package:flutter/material.dart';

class NoJobsWidget extends StatefulWidget {
  const NoJobsWidget({super.key});

  @override
  State<NoJobsWidget> createState() => _NoJobsWidgetState();
}

class _NoJobsWidgetState extends State<NoJobsWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 228, 225, 243),
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade50,
              Colors.deepPurple.shade50,
              Colors.deepPurple.shade100,
              //  Colors.deepPurple.shade200,
              const Color.fromARGB(255, 165, 131, 223),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 4, right: 4, top: 12, bottom: 12),
                        height: 310,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 10, right: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Container(
                                            clipBehavior: Clip.antiAlias,
                                            padding: const EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                      255, 92, 76, 172)
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5,
                                                              right: 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Icon(
                                                              Icons
                                                                  .not_interested,
                                                              size: 24, //28,
                                                              color: Colors
                                                                  .deepPurple),
                                                          Text('',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .deepPurple
                                                                      .shade900,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 0,
                                                              right: 10),
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      child: const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text('No Jobs',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ])))),
          ],
        ),
      ),
    );
  }
}
