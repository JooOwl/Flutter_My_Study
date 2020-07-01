import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Different_List_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea(
        // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: Different_List_Body(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

class Different_List_Body extends StatelessWidget {
  List<ListItemCustom> items;

  void ListMaker() {
    items = List<ListItemCustom>.generate(
      1000,
      (i) => i % 6 == 0
          ? HeadingItem("Heading $i")
          : MessageItem("Sender $i", "Message body $i"),
    );
  }

  @override
  Widget build(BuildContext context) {
    ListMaker();

    return Scaffold(
      appBar: AppBar(
        title: Text("Different_List"),
      ),
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: items.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is MessageItem) {
            return ListTile(
              title: Text(item.sender),
              subtitle: Text(item.body),
            );
          }
        },
      ),
    );
  }
}

// The base class for the different types of items the list can contain.
abstract class ListItemCustom {}

// A ListItem that contains data to display a heading.
class HeadingItem implements ListItemCustom {
  final String heading;

  HeadingItem(this.heading);
}

// A ListItem that contains data to display a message.
class MessageItem implements ListItemCustom {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}
