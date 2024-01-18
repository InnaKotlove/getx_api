import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx_api/model/fixture_item_model.dart';

class ApiDataSource extends GetConnect {

  Future<List<FixtureItemModel>> fetchFixtures() async {
    final Response response =
        await get('https://api-football-beta.p.rapidapi.com/fixtures', query: {
      'date': '2020-02-06'
    }, headers: {
      'X-RapidAPI-Key': '34b7eda7d2msh465aaae5b70ea14p199c29jsnec4b2335e832',
      'X-RapidAPI-Host': 'api-football-beta.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List<dynamic> data = response.body['response'];
      List<FixtureItemModel> fixturesList =
          data.map((jsonTextures) => FixtureItemModel.fromJson(jsonTextures)).toList();
      logResponse(response);
      return fixturesList;
    } else {
      throw Exception('Error, sorry ${response.statusCode}');
    }
  }

  void logResponse(Response response) {
    log('${response.request?.method.toUpperCase()} ${response.request?.url} ${response.statusCode}\n ${response.bodyString}');
  }
}
