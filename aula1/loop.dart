import 'dart:io';

main(){

  bool condicao = true;

  while(condicao){
    print('Escreva uma texto: ');
    String text = stdin.readLineSync();
    if(text == 'sair'){
      condicao = false;
      print('Programa finalizado!');
    }else{
      print('Você digitou: $text');
    }
  }
}