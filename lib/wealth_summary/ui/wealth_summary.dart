import 'package:flipper_app_test/wealth_summary/repositories/wealth_summary_repository.dart';
import 'package:flipper_app_test/wealth_summary/ui/tile/wealth_summary_tile.dart';
import 'package:flutter/material.dart';

class WealthSummary extends StatefulWidget {
  WealthSummary({Key key}) : super(key: key);

  @override
  _WealthSummaryState createState() => _WealthSummaryState();
}

class _WealthSummaryState extends State<WealthSummary> {
  final repository = WealthSummaryRepository();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: FutureBuilder<List<Map>>(
            future: repository.getWealthSummary(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("Erro aconteceu");
              } else if (snapshot.hasData) {
                final list = snapshot.data;
                // Text(list[index]['profitability'].toString()),
                return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) => WealthSummaryTile(
                          list[index]['total'],
                          list[index]['profitability'],
                          list[index]['cdi'],
                          list[index]['gain'],
                        ));
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
