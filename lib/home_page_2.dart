import 'package:flutter/material.dart';

class HomePAge3 extends StatefulWidget {
  const HomePAge3({Key? key}) : super(key: key);

  @override
  State<HomePAge3> createState() => _HomePAge3State();
}

class _HomePAge3State extends State<HomePAge3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Мои объекта",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),

        body: GridView.builder(
          padding: const EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount : 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 100,
            ) ,
            itemBuilder:(_ ,__){
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              color: Colors.white,
              elevation: 2,
              shadowColor: Colors.black.withOpacity(0.5),
              child:  Stack(

                children: [
                  Image.network("https://chinorkent.uz/public/gallery/3CKJfppzCyfASrE15ztPxMRymxq5x5jO4Lv1aGUn.jpg"),

                  Positioned(
                      top: 2,
                      right: 2,
                      child: Icon(Icons.check_circle , size:20 , color: Colors.blue,)),


                ],
              )
            );
            })


    );
  }
}
