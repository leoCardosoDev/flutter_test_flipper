import 'package:flipper_app_test/utils/responsive.dart';
import 'package:flutter/material.dart';

class WealthSummaryTile extends StatelessWidget {
  final int total;
  final double profitability;
  final double gain;
  final double cdi;

  WealthSummaryTile(this.total, this.profitability, this.cdi, this.gain);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Card(
      margin: EdgeInsets.fromLTRB(
        8,
        responsive.widthPercent(50),
        8,
        responsive.widthPercent(50),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).accentColor, width: .15),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.only(
            top: responsive.diagonalPercent(1),
            bottom: responsive.diagonalPercent(.2)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Seu resumo',
                style: Theme.of(context).textTheme.headline1,
              ),
              trailing: Icon(Icons.more_vert),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: responsive.diagonalPercent(2),
                  bottom: responsive.diagonalPercent(2)),
              child: Column(
                children: [
                  Text(
                    'Valor investido',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'R\$ ' + this.total.toStringAsFixed(2),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            Container(
              padding: new EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
              margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        'Rentabilidade/mês',
                        style: Theme.of(context).textTheme.subtitle1,
                      )),
                      Text(
                        this.profitability.toStringAsFixed(2) + ' %',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        'CDI',
                        style: Theme.of(context).textTheme.subtitle1,
                      )),
                      Text(
                        this.cdi.toStringAsFixed(2) + ' %',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        'Ganho/mês',
                        style: Theme.of(context).textTheme.subtitle1,
                      )),
                      Text(
                        'R\$ ' + this.gain.toStringAsFixed(2),
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(color: Colors.black12, height: 2),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                              color: Theme.of(context).primaryColor)),
                      child: Text('Ver mais'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
