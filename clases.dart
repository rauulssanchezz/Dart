void main() {

  final Map<String, dynamic> rawJson = {
    'name' : 'Peter Parker',
    'power' : 'Araña',
    'isAlive' : true
  };

  final wolverine = Hero(name : 'Logan', power : 'Regeneración', isAlive : false);

  final spiderman = Hero.fromJson(rawJson);

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  print(spiderman);

}


class Hero {

  String name;
  String power;
  bool isAlive;

  Hero ({
    required this.name,
    required this.power,
    required this.isAlive
    });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No powe found',
        isAlive = json['isAlive'] ?? false;

  // Hero( String pName, String pPower )
  //   : name = pName,
  //     power = pPower;

  @override
  String toString() => 'Hero\nname: $name \npower: $power\nisAlive: ${isAlive ? 'Yes' : 'No'}';

}