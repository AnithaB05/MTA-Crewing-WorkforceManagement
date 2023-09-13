import 'package:flutter/material.dart';
import 'jobs_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'no_jobs.dart';

class Job {
  final String jobNumber;
  final String jobDate;
  final String booth;
  final String tour;
  final String station;
  final String rdo;

  Job({
    required this.jobNumber,
    required this.jobDate,
    required this.booth,
    required this.tour,
    required this.station,
    required this.rdo,
  });
}

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  List<Job> jobs = [];
  bool noJobs = false;

  @override
  void initState() {
    super.initState();
    //loadJsonData();
  }

  Future<void> loadJsonData() async {
    final jsonString = await http.get(Uri.parse(
        'http://20.185.240.247:8085/JsonData/JobDetails.json')); //http://localhost/Json/JobDetailsEmpty.json
    final jsonData = json.decode(jsonString.body);

    if (jsonData['Jobs'] is List) {
      setState(() {
        jobs = (jsonData['Jobs'] as List).map((jobJson) {
          return Job(
            jobNumber: jobJson['JobNumber'],
            jobDate: jobJson['JobDate'],
            booth: jobJson['Booth'],
            tour: jobJson['Tour'],
            station: jobJson['Station'],
            rdo: jobJson['RDO'],
          );
        }).toList();
      });
    } else {
      // Handle the case where 'Jobs' is null or not a List
      setState(() {
        noJobs = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: loadJsonData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // Display a loading indicator while fetching data
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 380,
              child: noJobs
                  ? const NoJobsWidget()
                  : ListWheelScrollView(
                      itemExtent: 310,
                      physics: const FixedExtentScrollPhysics(),
                      children: jobs.map((job) {
                        return JobsWidget(
                          jobNumber: job.jobNumber,
                          jobDate: job.jobDate,
                          booth: job.booth,
                          tour: job.tour,
                          station: job.station,
                          rdo: job.rdo,
                        );
                      }).toList(),
                    ),
            );
          }
        });
  }
}
