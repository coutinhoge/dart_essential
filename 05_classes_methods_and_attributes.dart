void main() {
  //classes, methods and attributes

  //Objects of 'smartphone class objects'
  smartphone smartphoneApple = smartphone('blue', 8, 6.78, 0.200);
  smartphone smartphoneSamsung = smartphone('black', 12, 6.99, 0.220);

  //Accessing an attribute or a method of the class, belonging to the object
  //atribute
  print(smartphoneApple.processors);
  //method
  print(smartphoneSamsung.toString());
  //method
  print(smartphoneApple.valueOfSmartphone(1000));
}

//Class
class smartphone {
  //attributes
  final String color;
  final int processors;
  final double screenSize;
  final double weight;

  //constructor
  smartphone(this.color, this.processors, this.screenSize, this.weight);

  //Methods
  String toString() {
    return "Color: $color, Processors: $processors, Screen Size: $screenSize, Peso: $weight";
  }

  double valueOfSmartphone(double value) {
    return value * processors;
  }
}
