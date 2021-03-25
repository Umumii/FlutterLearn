import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // home: ExpansionTileWidget(),
      home: ExpansionPanelListWidget(),
    );
  }
}

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile Widget'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expansion Tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: [
            ListTile(
              title: Text('list title'),
              subtitle: Text('list subTitle'),
            )
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}

class ExpansionPanelListWidget extends StatefulWidget {
  ExpansionPanelListWidget({Key key}) : super(key: key);

  @override
  _ExpansionPanelListWidgetState createState() =>
      _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  List<int> iList;
  List<ExpandStateBean> mList;

  _ExpansionPanelListWidgetState() {
    iList = List();
    mList = List();
    for (var i = 0; i < 10; i++) {
      iList.add(i);
      mList.add(ExpandStateBean(i, false));
    }
  }

  _setCurrenteIndex(int index, bool isExpanded) {
    setState(() {
      mList.forEach((element) {
        if (element.index == index) {
          element.isOpen = !isExpanded;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion panel widget'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol) {
            _setCurrenteIndex(index, bol);
          },
          children: mList.map((e) {
            return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('This is No.${e.index}'),
                  );
                },
                body: ListTile(
                  title: Text('expansion no.${e.index}'),
                ),
                isExpanded: e.isOpen);
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  int index;
  bool isOpen;
  ExpandStateBean(this.index, this.isOpen);
}
