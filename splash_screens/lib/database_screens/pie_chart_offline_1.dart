import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;



class PieChartOffline extends StatefulWidget {
  @override
  _PieChartOfflineState createState() => _PieChartOfflineState();
}

class _PieChartOfflineState extends State<PieChartOffline> {

  List<charts.Series<Task, String>> _seriesPieData;

  generateData(){
  var piedata = [
      new Task('Work', 35.8, Color(0xff3366cc)),
      new Task('Eat', 8.3, Color(0xff990099)),
      new Task('Commute', 10.8, Color(0xff109618)),
      new Task('TV', 15.6, Color(0xfffdbe19)),
    ];

  _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.value,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorValue),
        id: 'Task',
        data: piedata,
         labelAccessorFn: (Task row, _) => '${row.value}',
      ),
    );
  }


  @override
  void initState() {
    // TODO: implement initState
     super.initState();
     _seriesPieData = <charts.Series<Task, String>>[];
    generateData();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PieChart"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text("Time Spent on Daily Tasks"),
                SizedBox(height:10.0),
                Expanded(
                  child: charts.PieChart(
                    _seriesPieData,
                    animate: true,
                    animationDuration: Duration(seconds: 3),
                  behaviors: [
                            new charts.DatumLegend(
                              outsideJustification: charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 2,
                              cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                              entryTextStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.purple.shadeDefault,
                                  fontFamily: 'Georgia',
                                  fontSize: 11),
                            )
                          ],
                           defaultRenderer: new charts.ArcRendererConfig(
                              arcWidth: 100,
                             arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.inside)
        ])),
                ),
              ]
            ),
          ),
        ),
      ),      
    );
  }
}


class Task{
  String task;
  double value;
  Color colorValue;

  Task(
    this.task,
    this.value,
    this.colorValue
  );

}




