import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../contents.dart';
import '../config.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Container(
      width: MediaQuery.of(context).size.shortestSide * .7,
      color: Theme.of(context).accentColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'images/drawer_image.jpg',
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .7,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int position) {
                Content content = contentList[position];
                if (position == 0) {
                  return ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Inicio",
                      style: contentTitleStyle.copyWith(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.expand_more,
                    ),
                    onTap: () {
                      onSelectContent(contentList[0]);
                    },
                  );
                }
                if (position == 1) {
                  return Container(
                    color: Colors.black26,
                    child: ListTile(
                      leading: Text(
                        "I",
                        style: contentTextStyle.copyWith(
                            color: Colors.black,
                            fontFamily: "Love Icon",
                            fontSize: 24),
                      ),
                      title: Text(
                        "De Amigos",
                        style: contentTitleStyle.copyWith(color: Colors.black),
                      ),
                    ),
                  );
                }
                if ((position > 1 && position < 8) || position > 8) {
                  return ListTile(
                    leading: Text(
                      getIcon(content.author),
                      style: contentTextStyle.copyWith(
                          color: Colors.black,
                          fontFamily: "Love Icon",
                          fontSize: 20),
                    ),
                    title: Text(
                      content.title,
                      style: contentTextStyle.copyWith(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.expand_more,
                    ),
                    onTap: () {
                      onSelectContent(content);
                      Navigator.of(context).pop();
                    },
                  );
                }

                if (position == 8) {
                  return Container(
                    color: Colors.black26,
                    child: ListTile(
                      leading: Text(
                        "K",
                        style: contentTextStyle.copyWith(
                            color: Colors.black,
                            fontFamily: "Love Icon",
                            fontSize: 24),
                      ),
                      title: Text(
                        "De pareja...",
                        style: contentTitleStyle.copyWith(color: Colors.black),
                      ),
                    ),
                  );
                }
              },
              itemCount: contentList.length,
              padding: EdgeInsets.only(top: 2.0, bottom: 2.0),
            ),
          ),
        ],
      ),
    );
  }
}

String getIcon(Author author) {
  switch (author) {
    case Author.ernesto:
      return "L";
    case Author.yeni:
      return "E";
    case Author.otro:
      return "V";
  }
}
