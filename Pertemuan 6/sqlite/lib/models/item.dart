class Item {
  late int? _id;
  late String _name;
  late int _price;

  int? get id => _id;
  set id( value) => _id = value;

  String get name => _name;
  set name(value) => this._name = value;

  int get price => this._price;
  set price(value) => this._price = value;


// konstruktor versi 1
    Item(this._name, this._price);

// konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
   _name = map['name'];
   _price = map['price'];
  }

// konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }
}
