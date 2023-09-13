import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExtraJobAssignment extends StatefulWidget {
  const ExtraJobAssignment({super.key});

  @override
  State<ExtraJobAssignment> createState() => _ExtraJobAssignmentState();
}

class _ExtraJobAssignmentState extends State<ExtraJobAssignment> {
  List<Map<String, dynamic>> jobsData = [];
  bool noExtraJobs = false;

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    final jsonString = await http
        .get(Uri.parse('http://localhost/FlutterJson/ExtraJobAssignment.json'));
    //http://20.185.240.247:8085/JsonData/ExtraJobAssignment.json
    final jsonData = json.decode(jsonString.body);

    if (jsonData['Jobs'] is List) {
      setState(() {
        jobsData = List<Map<String, dynamic>>.from(jsonData['Jobs']);
      });
    } else {
      // Handle the case where 'Jobs' is null or not a List
      setState(() {
        noExtraJobs = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: buildHeaderDataTable(),
          ),
          Container(
            width: double.infinity,
            child: buildDetailDatatable(),
          ),
        ],
      ),
    );

    // return SizedBox(
    //     width: double.infinity, child: Row(children: [buildHeaderDataTable()]));
  }

  Widget buildHeaderDataTable() {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith(
          (states) => const Color.fromARGB(255, 219, 203, 242)),
      headingRowHeight: 40, //50,
      columns: <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(MdiIcons.calendarPlus,
                      size: 25, color: Colors.deepPurple),
                  const SizedBox(width: 5),
                  const Text('EXTRA JOB ASSIGNMENTS',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
          ),
        ),
      ],
      rows: const <DataRow>[],
    );
  }

  Widget buildDetailDatatable() {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /* Icon(Icons.calendar_month,
                                      size: 25, color: Colors.deepPurple),
                                  SizedBox(width: 5), */
                  Text('BOOTH/STATION',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ]),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /* Icon(Icons.calendar_month,
                                      size: 25, color: Colors.deepPurple),
                                  SizedBox(width: 5), */
                  Text('TOUR/TIME',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ]),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /* Icon(Icons.calendar_month,
                                      size: 25, color: Colors.deepPurple),
                                  SizedBox(width: 5), */
                  Text('DATE', //'Boro',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ]),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* Icon(Icons.calendar_month,
                                      size: 25, color: Colors.deepPurple),
                                  SizedBox(width: 5), */
                  Text('CONFIRM',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ]),
          ),
        ) // Add a column for the "Confirm" button
      ],
      rows: List<DataRow>.generate(
        jobsData.length,
        (int index) => DataRow(
          cells: <DataCell>[
            DataCell(Text(jobsData[index]["BOOTH/STATION"])),
            DataCell(Text(jobsData[index]["TOUR/TIME"])),
            DataCell(Text(jobsData[index]["JOBDATE"])),
            DataCell(
              Center(
                child: SizedBox(
                  width: 66,
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      /* fixedSize: MaterialStateProperty.all(
                                              Size(10, 10)), */
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        //side: BorderSide(
                        //    color: Colors.red))
                      )),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(0)),
                      /* backgroundColor:
                                              MaterialStateProperty.all(Colors.red), */
                    ),
                    onPressed: () {
                      // Show an alert with row values
                      _showAlertDialog(context, jobsData[index]);
                    },
                    child: const Text(
                      'CONFIRM',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        //color: Color.fromARGB(255, 22, 27, 22)
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context, Map<String, dynamic> rowData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('BOOTH/STATION: ${rowData["BOOTH/STATION"]}'),
              Text('TOUR/TIME: ${rowData["TOUR/TIME"]}'),
              Text('JOBDATE: ${rowData["JOBDATE"]}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
  /*Widget buildDetailDatatable() {
    List<DataColumn> columns = [];
    List<DataRow> rows = [];

    if (jobsData.isNotEmpty) {
      final firstJob = jobsData[0];
      columns = firstJob.keys.map((key) {
        return DataColumn(
            label: Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(key,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
              ]),
        ));
      }).toList();

      // Dynamically create DataRow elements based on the JSON data
      rows = jobsData.map((job) {
        return DataRow(
            cells: job.values.map((value) {
          return DataCell(Text(value.toString()));
        }).toList());
      }).toList();
    }

    return jobsData.isNotEmpty
        ? DataTable(
            columnSpacing: 12,
            headingRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.deepPurple.shade50),
            headingRowHeight: 40,
            columns: columns,
            rows: rows)
        : const Center(
            child: Text('No data available'),
          );
  }*/
}
