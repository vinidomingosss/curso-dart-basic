import 'dart:io'; //importa para usar o readlineSync

List<String> produtos = [];

main(){
  bool cond = true;

  while(cond){
    print('Digite um produto !');
     //entrada de dados (string)
    if(text == 'sair'){
      print('Programa finalizado !');
      cond = false;
    }else if(text == 'imprimir'){
      imprimir();
    }else if(text == 'remover'){
      remover();
    }else{
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H'); // limpa tela
    }
  }
}

imprimir(){
  for (var i = 0; i < produtos.length; i++) {
    print('Item: ${i+1} - ${produtos[i]}');
  };
}

remover(){
  print('Remover qual item? ');
  imprimir();
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item-1);
  print('item removido com sucesso !');
}

menu(){
  do {
    print('1 - Inserir Produto\n');
    print('2 - Listar\n');
    print('3 - Remover\n');
    print('4 - Sair');
    String text = stdin.readLineSync();
  } while (text == 4);
}