import 'package:flutter/material.dart';
class bird extends StatelessWidget {
  const bird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcT7p48zgkqUyYDdx7AGnlWVOEh6vpc8QHHPh0mAtn_73_jD_etGCyAexD1ArARBsGl4HqZYyGjcpRJRo3A"),
    );
  }
}



