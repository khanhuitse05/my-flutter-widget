import 'package:flutter/material.dart';

import 'package:mywidget/theme/app_styles.dart';
import 'package:mywidget/ui/default_title.dart';

class ListDemoView extends StatefulWidget {
  @override
  _ListDemoViewState createState() => _ListDemoViewState();
}

class _ListDemoViewState extends State<ListDemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View"),),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              DefaultTitle("Documents"),
              _buildDocumentItem(
                  "Annual finance report", Icons.color_lens),
              _buildDocumentItem("Company meeting schedule",
                  Icons.laptop_mac),
              _buildDocumentItem("Project quotations",
                  Icons.print),
              DefaultTitle("Menu"),
              _buildMenuItem("Hotline: 080808080", Icons.call),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  height: 1,
                  thickness: 1,
                ),
              ),
              _buildMenuItem("Email", Icons.email),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  height: 1,
                  thickness: 1,
                ),
              ),
              _buildMenuItem("FAQs", Icons.question_answer),
              DefaultTitle("Setting"),
              _buildSettingItem("Notification", Icons.notifications_active, 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  height: 1,
                  thickness: 1,
                ),
              ),
              _buildSettingItem("Setting", Icons.settings, 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  height: 1,
                  thickness: 1,
                ),
              ),
              _buildSettingItem("Language", Icons.language, 2),
              DefaultTitle("Steps"),
              Column(
                children: <Widget>[
                  for (int i = 0; i < process.length; i++)
                    _buildProcessItem(i),
                ],
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16 + MediaQuery.of(context).padding.bottom,
            ),
          ),
        ],
      ),
    );
  }

  int _index = 0;


  Widget _buildDocumentItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 28,
            color: Colors.grey[700],
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, IconData icon) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 16),
          Icon(
            icon,
            size: 18,
            color: Colors.green,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Icon(
            Icons.navigate_next,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  Widget _buildSettingItem(String title, IconData icon, int index) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 16),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
                color: AppStyles.colorLoop(index),
                borderRadius: BorderRadius.circular(5)),
            child: Icon(
              icon,
              size: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Icon(
            Icons.navigate_next,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  List<String> process = [
    "12 new users registered",
    "System shutdown",
    "New order received",
    "Production server down"
  ];
  Widget _buildProcessItem(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 3, right: 15),
              width: 28,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppStyles.colorLoop(index)),
                    alignment: Alignment.center,
                    child: Text(
                      '${index + 1}',
                      style: Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: Colors.white)),
                    ),
                  ),
                  if (index != (process.length - 1))
                    Expanded(
                      child: Container(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 8),
                  child: Text(process[index]),
                )),
          ],
        ),
      ),
    );
  }

}
