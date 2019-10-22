import 'package:objetos/src/animais/animal.dart';

class Cachorro extends Animal{
  
  String raca;
  Cachorro({this.raca, barulho}): super (barulho: barulho);
}