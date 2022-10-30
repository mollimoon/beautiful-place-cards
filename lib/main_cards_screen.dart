import 'package:interesting_places/places.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            final item = placesList[index];
            return Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                //return необходим
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/description', arguments: item);
                        }, //передача аргумента!! чтобы данные передались надр экран
                        child: Hero(
                          tag: item.placeImage,
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: AssetImage(
                              item.placeImage,
                            ), //если требует имеджпровайдер -assetImage
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              item.placeName,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              item.placeDescription ?? '',
                            ), //если нул то строка (из-за того что у нас мб нул)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 1.0,
            ); //return необходим
          },
          itemCount: placesList.length,
        ),
      ),
    );
  }
}
