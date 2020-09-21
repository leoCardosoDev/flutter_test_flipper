import 'package:flipper_app_test/config/hasura_config.dart';

import '../interface/wealth_summary_interface.dart';
import 'package:hasura_connect/hasura_connect.dart';

class WealthSummaryRepository implements WealthSummaryInterface {
  final _client = HasuraConnect(HASURA_URL, headers: hasuraSecret);

  @override
  Future<List<Map>> getWealthSummary() async {
    final response = await _client.query('''
      query {
        wealthSummary {
          profitability
          gain
          total
          cdi
        }
      }
    ''');
    return (response['data']['wealthSummary'] as List)
        .map((e) => {
              "profitability": e['profitability'],
              "gain": e['gain'],
              "total": e['total'],
              "cdi": e['cdi']
            })
        .toList();
  }
}
