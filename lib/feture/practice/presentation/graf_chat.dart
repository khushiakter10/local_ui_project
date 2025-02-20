import 'package:flutter/material.dart';

class DensityGraph extends StatefulWidget {
  @override
  _DensityGraphState createState() => _DensityGraphState();
}

class _DensityGraphState extends State<DensityGraph> {
  String? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Density Graph",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var day in ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"])
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDay = selectedDay == day ? null : day;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              color: selectedDay == day ? Colors.deepPurple : Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              day,
                              style: TextStyle(
                                color: selectedDay == day ? Colors.white : Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "08:00\n17:30",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "It is not busy right now",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  10,
                      (index) => Container(
                    width: 10,
                    height: [20, 30, 50, 60, 80, 90, 70, 50, 30, 10][index].toDouble(),
                    decoration: BoxDecoration(
                      color: index == 2 ? Colors.deepPurple : Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}