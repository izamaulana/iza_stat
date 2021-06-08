import 'package:iza_stat/models/item.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Aqua',
    'Vit',
    'Ades',
    'Le Minerale',
  ];

  ItemModel getById(int id) => ItemModel(id, itemNames[id % itemNames.length]);

  ItemModel getByPosition(int position) {
    return getById(position);
  }
}
