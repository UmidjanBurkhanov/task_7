import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  final List<String> icon_list = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
  ];
  final List<String> name_list = [
    "Баланс",
    "Скоринг",
    "Уведомления",
    "Новости",
    "Мои адреса",
    "Мои карты",
    "Бренды",
    "Курсы валют",
    "История кешбэков",
    "Сервис центр",
    "Настройки",
    "О приложении",
    "Что улучшить",
    "Мои отзывы",
    "Выйти",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Профиль"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: icon_list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset("assets/${icon_list[index]}.png"),
            title: Text("${name_list[index]}"),
            trailing: Icon(Icons.arrow_right),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
