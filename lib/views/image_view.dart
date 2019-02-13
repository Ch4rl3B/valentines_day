import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget{

  String imagePath;
  ImageView(this.imagePath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.transparent,
      type: MaterialType.transparency,
      //PHOTOVIEW IS A KIND OF HERO WIDGET... READ THE DOC
      child: Stack(
        children: <Widget>[
          PhotoView(
            imageProvider: AssetImage(imagePath),
            heroTag: imagePath,
            minScale: PhotoViewComputedScale.contained,
          ),
          Container(
            margin: const EdgeInsets.only(top: 32.0, left: 8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(Icons.arrow_back,
                    size: MediaQuery.of(context).size.shortestSide * 0.1,
                    color: Colors.amberAccent,),
                  onPressed: (){
                    Navigator.pop(context);
                  }
              )
            ),
          ),
        ],
      ),
    );
  }

}