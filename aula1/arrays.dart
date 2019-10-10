import 'dart:io';

main(){
  /*var nome = [];

  bool cond = true;

  while(cond){
    print('Digite uma coisa');
    String text = stdin.readLineSync();
    if(text == 'sair'){
      print('Programa finalizado');
      cond = false;
    }else{
      nome.add(text);
    }
    print(nome);
    print('\n');
  }*/

  List<String> nomes = ['Vinicius','Domingos','Alves'];

  nomes.add('Pereira');

  print(nomes.length);
  print(nomes);
}