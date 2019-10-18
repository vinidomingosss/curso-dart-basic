import 'package:objetos/src/pessoa.dart';

main(List<String> arguments) {
  Pessoa pessoa = Pessoa(idade: 19,nome: 'Vinicius',sexo: 'M');
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);
}
