import 'package:objetos/src/humano.dart';

class Pessoa extends Humano{
  String nome;
  int idade;
  String sexo;

  Pessoa({this.nome, this.idade, this.sexo});

  //pode colocar as chaves, dai na hora de criar nao importa a ordem que passar os paramentros
  //ou sem as chaves e na hora de criar ele da um hint da ordem

  //String _nomeLocal;  _ para botar a var como private

  //final String otherName = 'vini';  var recebe esse valor e não pode mudar

}