import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class JobsWidget extends StatefulWidget {
  const JobsWidget(
      {super.key,
      required this.jobNumber,
      required this.jobDate,
      required this.booth,
      required this.tour,
      required this.station,
      required this.rdo});

  final String jobNumber;
  final String jobDate;
  final String booth;
  final String tour;
  final String station;
  final String rdo;

  @override
  State<JobsWidget> createState() => _JobsWidgetState();
}

class _JobsWidgetState extends State<JobsWidget> {
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
                                                                  .work_history,
                                                              size: 24, //28,
                                                              color: Colors
                                                                  .deepPurple),
                                                          Text('JOB #',
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
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(widget.jobNumber,
                                                              style: const TextStyle(
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
                                      const SizedBox(width: 10),

                                      // star
                                      Expanded(
                                        child: Container(
                                            clipBehavior: Clip.antiAlias,
                                            padding: const EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                      255, 131, 116, 146)
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
                                                                  .calendar_month,
                                                              size: 24, //28,
                                                              color: Colors
                                                                  .deepPurple),
                                                          Text('JUL',
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
                                                              top: 6,
                                                              right: 10),
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      child: const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .baseline,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text('SUN ',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          218,
                                                                          1,
                                                                          1),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          Text('16',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            )),
                                      ),
                                      // end star
                                    ],
                                  ),
                                ),
                              ),
                              //site
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 10, right: 10),
                                  // color: Colors.amber.shade50,
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
                                            /* color: Colors
                                                              .blue.shade50, */
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5,
                                                              right: 10),
                                                      /* color: Colors
                                                                            .red, */
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Icon(
                                                              MdiIcons
                                                                  .mapMarkerRadius,
                                                              size: 24, //28,
                                                              color: Colors
                                                                  .deepPurple),
                                                          Text('BOOTH',
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
                                                      /*   color: Color.fromARGB(
                                                                                255,
                                                                                131,
                                                                                116,
                                                                                146)
                                                                            .withOpacity(
                                                                                0.1), */

                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(widget.booth,
                                                              style: const TextStyle(
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
                                      const SizedBox(width: 10),

                                      // star
                                      Expanded(
                                        child: Container(
                                            clipBehavior: Clip.antiAlias,
                                            padding: const EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              //here
                                              color: const Color.fromARGB(
                                                      255, 92, 76, 172)
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            /*  color: Colors
                                                              .blue.shade200, */
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5,
                                                              right: 10),
                                                      /* color: Colors
                                                                            .red, */
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Icon(
                                                              Icons.schedule,
                                                              size: 24, //28,
                                                              color: Colors
                                                                  .deepPurple),
                                                          Text('TOUR',
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
                                                      /*  color: Color.fromARGB(
                                                                                255,
                                                                                131,
                                                                                116,
                                                                                146)
                                                                            .withOpacity(
                                                                                0.1), */

                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(widget.booth,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            )),
                                      ),
                                      // end star
                                    ],
                                  ),
                                ),
                              ),
                              // end site
                              // new site

                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 10, right: 10),
                                  // color: Colors.amber.shade50,
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
                                            /* color: Colors
                                                              .blue.shade50, */
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5,
                                                              right: 10),
                                                      /* color: Colors
                                                                            .red, */
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Icon(
                                                              Icons.train,
                                                              size: 24, //28,
                                                              color: Colors
                                                                  .deepPurple),
                                                          Text('STATION',
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
                                                      /*  color: Color.fromARGB(
                                                                                255,
                                                                                131,
                                                                                116,
                                                                                146)
                                                                            .withOpacity(
                                                                                0.1), */

                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(widget.station,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            )),
                                      ),
                                      const SizedBox(width: 10),

                                      // star
                                      Expanded(
                                        child: Container(
                                            clipBehavior: Clip.antiAlias,
                                            padding: const EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              //here
                                              color: const Color.fromARGB(
                                                      255, 92, 76, 172)
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            /*  color: Colors
                                                              .blue.shade200, */
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5,
                                                              right: 10),
                                                      /* color: Colors
                                                                            .red, */
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Icon(
                                                              Icons.date_range,
                                                              size: 24, // 28,
                                                              color: Colors
                                                                  .deepPurple),
                                                          Text('RDO',
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
                                                      /* color: Color.fromARGB(
                                                                                255,
                                                                                131,
                                                                                116,
                                                                                146)
                                                                            .withOpacity(
                                                                                0.1), */

                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(widget.rdo,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            )),
                                      ),
                                      // end star
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
