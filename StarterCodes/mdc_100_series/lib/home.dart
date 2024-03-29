// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/products_repository.dart';
import 'model/product.dart';

class HomePage extends StatelessWidget {
  // TODO: Make a collection of cards (102)
  
  List<Card> _buildGridCards(int count){
    List<Card> cards = List.generate(count, 
    (int index) => Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0/11.0,
            child: Image.asset('assets/diamond.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Title'),
                  SizedBox(height: 8.0),
                  Text('Secondary Text'),
                ],
              ),
              ),

        ],
      ),
    )
    );
    return cards;
  }


  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        //leading at the right side of appBar
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
            ),
            onPressed: (){
              print('Menu Button');
            },
        ),
        title: Text("Shrine"),

        actions: <Widget>[
          //search button in appBar
          IconButton(
            icon: Icon(Icons.search, 
            semanticLabel: 'search',
            ), 
            onPressed: (){
                print("Search Button");
            }),
          IconButton(
            icon: Icon(Icons.tune, 
            semanticLabel: 'filter',
            ), 
            onPressed: () {
                print("Filter button");
            },),

        ],
      ),
      // TODO: Add a grid view (102)
      
      body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0/9.0,
          children: _buildGridCards(10),
        ),
      // TODO: Set resizeToAvoidBottomInset (101)
      resizeToAvoidBottomInset: false,
    );
  }
}
