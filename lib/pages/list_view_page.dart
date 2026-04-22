import 'package:flutter/material.dart';
import '../models/item_data.dart';
import '../widgets/custom_list_item.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemData> items = [
      ItemData(
        title: 'История',
        homeWork: 'Выполнить цдз',
        mark: '',
        wasNot: true,
        time: '09:00 - 09:45',
        room: '108',
      ),
      ItemData(
        title: 'Основыбезопасности на производстве',
        homeWork: '',
        mark: '5',
        wasNot: false,
        time: '09:55 - 10:40',
        room: '205',
      ),
      ItemData(
        title: 'История',
        homeWork: 'Выполнить цдз',
        mark: '',
        wasNot: false,
        time: '11:00 - 11:45',
        room: '108',
      ),
      ItemData(
        title: 'Моделирование физических процессов в приложениях',
        homeWork: '',
        mark: '',
        wasNot: false,
        time: '12:05 - 12:50',
        room: '219',
      ),
      ItemData(
        title: 'Физика',
        homeWork: 'Вопросы к зачету по физике',
        mark: '',
        wasNot: false,
        time: '13:10 - 13:55',
        room: '303',
      ),
      ItemData(
        title: 'Проектный менеджмент в разработке и сопровождении программного обеспечения',
        homeWork: 'подготовится к защите проектов',
        mark: '',
        wasNot: false,
        time: '14:15 - 15:00',
        room: '219',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Custom Height'),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: items.length,
        itemBuilder: (context, index) => CustomListItem(item: items[index]),
      ),
    );
  }
}
