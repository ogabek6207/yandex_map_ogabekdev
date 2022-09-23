import 'package:flutter/material.dart';
import 'package:yandex_map_ogabekdev/examples/widgets/map_page.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';


import 'package:flutter/material.dart';
import 'package:yandex_map_ogabekdev/examples/clusterized_placemark_collection_page.dart';
import 'package:yandex_map_ogabekdev/examples/map_controls_page.dart';
import 'package:yandex_map_ogabekdev/examples/map_object_collection_page.dart';
import 'package:yandex_map_ogabekdev/examples/widgets/map_page.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'examples/bicycle_page.dart';
import 'examples/circle_map_object_page.dart';
import 'examples/driving_page.dart';
import 'examples/placemark_map_object_page.dart';
import 'examples/polygon_map_object_page.dart';
import 'examples/polyline_map_object_page.dart';
import 'examples/reverse_search_page.dart';
import 'examples/search_page.dart';
import 'examples/suggest_page.dart';
import 'examples/user_layer_page.dart';

class MainPage extends StatelessWidget {
  void _pushPage(BuildContext context, MapPage page) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (_) =>
            Scaffold(
                appBar: AppBar(title: Text(page.title)),
                body: Container(
                    padding: const EdgeInsets.all(8),
                    child: page
                )
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('YandexMap examples')),
        body: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const YandexMap()
                  )
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: _allPages.length,
                    itemBuilder: (_, int index) => ListTile(
                      title: Text(_allPages[index].title),
                      onTap: () => _pushPage(context, _allPages[index]),
                    ),
                  )
              )
            ]
        )
    );
  }
}







void main() {
  runApp(MaterialApp(home: MainPage()));
}

const List<MapPage> _allPages = <MapPage>[
  MapControlsPage(),
  ClusterizedPlacemarkCollectionPage(),
  MapObjectCollectionPage(),
  PlacemarkMapObjectPage(),
  PolylineMapObjectPage(),
  PolygonMapObjectPage(),
  CircleMapObjectPage(),
  SuggestionsPage(),
  SearchPage(),
  ReverseSearchPage(),
  BicyclePage(),
  DrivingPage(),
];



