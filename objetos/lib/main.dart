import 'package:objetos/src/animais/cachorro.dart';
import 'package:objetos/src/animais/gato.dart';
import 'package:objetos/src/animais/passarinho.dart';
import 'package:objetos/src/pessoa.dart';

main(List<String> arguments) {
  //Pessoa pessoa = Pessoa(idade: 19,nome: 'Vinicius',sexo: 'M');
  // print(pessoa.nome);
  // print(pessoa.idade);
  // print(pessoa.sexo);

  //print(pessoa.peso);
  //print(pessoa.altura);

  Gato gato = Gato(nome: 'jorge',barulho: 'miau');
  Cachorro cachorro = Cachorro(raca: 'pastor alemao', barulho: 'auau');
  Passarinho passarinho = Passarinho(barulho: 'piu', cor: 'verde');

  print(gato.barulho);
  print(gato.nome);
  print(cachorro.barulho);
  print(cachorro.raca);
  print(passarinho.barulho);
  print(passarinho.cor);
}
