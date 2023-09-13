import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  void initState() {
    super.initState();
  }

  Future<Map<String, dynamic>> fetchCustomerHeaderData() async {
    final response = await http
        .get(Uri.parse('http://localhost/FlutterJson/CustomerDetail.json'));
//http://20.185.240.247:8085/JsonData/CustomerDetail.json

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON data
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load JSON data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
        future: fetchCustomerHeaderData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // Display a loading indicator while fetching data
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // If the data has been successfully fetched, display the user name in SingleChildScrollView
            final jsonData = snapshot.data;
            final userName = jsonData?['Name'];
            final pass = jsonData?['Pass'];
            final seniority = jsonData?['Seniority'];
            final department = jsonData?['Department'];

            return Container(
              color: const Color.fromARGB(
                  255, 249, 245, 253), //Colors.deepPurple.shade50,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    child: IntrinsicWidth(
                      // stepWidth: MediaQuery.of(context).size.width,
                      child: Container(
                          color: const Color.fromARGB(255, 249, 245, 253),
                          padding: const EdgeInsets.all(8), //10

                          //  width: MediaQuery.of(context).size.width,
                          child: Row(children: [
                            const SizedBox(width: 25),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: CircleAvatar(
                                backgroundColor:
                                    // const Color.fromARGB(248, 234, 213, 254),
                                    Colors.white,
                                // Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ClipOval(
                                    child: Image.asset(
                                        'assets/images/profilesquare.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 100,
                                child: Container(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(userName, //'Kevin Bell',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    252, 112, 74, 178),
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            const Text('Pass #:    '),
                                            Text(
                                              pass,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text('Seniority: '),
                                            Text(
                                              seniority,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 6),
                                        Row(
                                          children: [
                                            // Text('Job Title: '),
                                            Text(
                                              department,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: false,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )))
                          ])),
                    )),
              ),
            );
          }
        });
  }
}
