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
      child: PhotoView(
          imageProvider: AssetImage(imagePath),
          heroTag: imagePath,
          minScale: PhotoViewComputedScale.contained,
      ),
    );
  }

}