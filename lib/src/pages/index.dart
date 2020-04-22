import 'package:flutter/material.dart';

import 'package:contacts/src/pages/unser_construction_page.dart';
import 'package:contacts/src/widgets/index/contact_list.dart';
import 'package:contacts/src/labs/search_bar.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: _Drawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _SearchBarLocation(),
            _ContactListLocation(),
          ],
        )
      ),
      floatingActionButton: _FloatingActionAdd(),
    );
  }
}

class _Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              _DraweHeader(),
              _Divider(),

              _DrawerPages(),
              _Divider(),

              _DrawerLabels(),
              _Divider(),

              _DrawerConfig(),
              _Divider(),

              //Dark Mode
              _DarkModeOption()

            ],
          ),
        ),
      ),
    );
  }
}

class _DraweHeader extends StatelessWidget {
  const _DraweHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17, right: 17, top: 13, bottom: 5),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Icon(Icons.person),
            radius: 17,
          ),

          SizedBox(width: 10),

          Text('Contactos', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}

class _DrawerPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedColor = Color(0xff2465C1);

    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          
          Ink(
            decoration: BoxDecoration(
              color: Color(0xffE8F0FD),
              borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))
            ),
            child: ListTile(
              leading: Icon(Icons.person_outline, color: selectedColor),
              title: Text('Contactos', style: TextStyle(color: selectedColor)),
              trailing: Text('156',  style: TextStyle(color: selectedColor)),
              onTap: (){},
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))

            ),
            child: ListTile(
              leading: Icon(Icons.error_outline, color: Colors.black.withOpacity(.70)),
              title: Text('Sugerencias'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UnderConstructionPage()));
              },
            ),
          )

          
        ],
      ),
    );
  }
}

class _DrawerLabels extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        ListTile(
          title: Text('Etiquetas'),
        ),

        ListTile(
          leading: Icon(Icons.label_outline, color: Colors.black.withOpacity(.70)),
          title: Text('Family'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UnderConstructionPage()));
          },
        ),

        ListTile(
          leading: Icon(Icons.add, color: Colors.black.withOpacity(.70)),
          title: Text('Crear etiquetas'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UnderConstructionPage()));
          },
        ),

      ],
    );
  }
}

class _DrawerConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        ListTile(
          leading: Icon(Icons.settings, color: Colors.black.withOpacity(.70)),
          title: Text('Configuración'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UnderConstructionPage()));
          },
        ),

        ListTile(
          leading: Icon(Icons.help_outline, color: Colors.black.withOpacity(.70)),
          title: Text('Ayuda y comentarios'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UnderConstructionPage()));
          },
        ),

      ],
    );
  }
}

class _DarkModeOption extends StatelessWidget {
  const _DarkModeOption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.lightbulb_outline, color: Colors.black.withOpacity(.70)),
      title: Text('Dark Mode'),
      trailing: Switch.adaptive(
        //value: appTheme.darkTheme, 
        //activeColor: accentColor,
        //onChanged: ( value ) => appTheme.darkTheme = value
        value: true,
        onChanged: (value){},
      ),
    );
  }
}

class _Divider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Divider(color: Colors.black38);
  }
}

class _ContactListLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(

        child: ContactList()
        
      )
    );
  }
}

class _SearchBarLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: SearchBar()
    );
  }
}

class _FloatingActionAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
    );
  }
}