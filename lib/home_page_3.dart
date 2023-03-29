import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List<String> list = [
    "https://chinorkent.uz/public/gallery/W18fO3DFH1M9pbi1DfDEqnMuOD6aK04b0kSLowrL.jpg",
    "https://chinorkent.uz/public/gallery/W18fO3DFH1M9pbi1DfDEqnMuOD6aK04b0kSLowrL.jpg",
    "https://chinorkent.uz/public/gallery/H1nIVRA6Y2rSnS6J30d9uz0Pz5jztqUpCvk3zRN7.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Мои объекта"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
            color: Colors.white12,
child: Image.network("${list[index]}"),          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
