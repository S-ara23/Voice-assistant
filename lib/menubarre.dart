import 'package:flutter/material.dart';

class MenuBarre extends StatefulWidget {
  final Function(String) onLanguageChanged;
  final String language;
  const MenuBarre(
      {super.key, required this.onLanguageChanged, required this.language});
  @override
  State<MenuBarre> createState() => _MenuBarreState();
}

class _MenuBarreState extends State<MenuBarre> {
  /* void change(String language) {
    setState(() {
      widget.language = language;
      print(widget.language);
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue,
      child: ListView(
        children: [
          Column(
            children: [
              const ExpansionTile(
                title: Text('Pick A voice'),
                children: [
                  ListTile(
                    title: Text('Male Voice'),
                  ),
                  ListTile(
                    title: Text('Female voice'),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('Pick A Language'),
                children: [
                  // ignore: prefer_const_constructors
                  ListTile(
                    title: const Text('English'),
                    onTap: () {
                      widget.onLanguageChanged("EN");
                    },
                  ),
                  ListTile(
                    title: const Text('French'),
                    onTap: () {
                      widget.onLanguageChanged("FR");
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
