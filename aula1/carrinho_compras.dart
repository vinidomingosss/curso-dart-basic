import 'dart:async';
import 'dart:io'; //importa para usar o readlineSync

List<String> produtos = [];

main(){
  menu();
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
  String produtoRemovido = produtos[item-1];
  produtos.removeAt(item-1);
  print('\x1B[2J\x1B[0;0H');
  print('$produtoRemovido removido com sucesso !');
}

menu(){
  String opcao;
  do {
    print('1 - Inserir Produto');
    print('2 - Listar');
    print('3 - Remover');
    print('4 - Sair');
    opcao = stdin.readLineSync();
    if (opcao == '1'){
      print('\x1B[2J\x1B[0;0H');
      print('Digite um produto !');
      String produto = stdin.readLineSync();
      produtos.add(produto);
      print('\x1B[2J\x1B[0;0H');
    }else if(opcao == '2'){
      print('\x1B[2J\x1B[0;0H');
      imprimir();
    }else if(opcao == '3'){
      print('\x1B[2J\x1B[0;0H');
      remover();
    }else{
      print('######### Programa finalizado ! #########');
      print('\x1B[2J\x1B[0;0H'); // limpa tela
    }
  }while (opcao != '4');
}