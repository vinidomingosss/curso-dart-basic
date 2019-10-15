import 'dart:io';//importa para usar o readlineSync

List<String> produtos = [];

main(){
  menu();
}

imprimir(){
  for (var i = 0; i < produtos.length; i++) {
    print('Item: ${i+1} - ${produtos[i]}');
  };
  print('\n');
}

remover(){
  bool removeu = false;
  do{
    print('Remover qual item? ');
    imprimir();
    int item = int.parse(stdin.readLineSync());
    if (item < 1 || item > produtos.length){
      print('\x1B[2J\x1B[0;0H');
      print('Produto Invalido !');
    }else{
      String produtoRemovido = produtos[item-1];
      produtos.removeAt(item-1);
      removeu = true;
      print('\x1B[2J\x1B[0;0H');
      print('$produtoRemovido removido com sucesso !');
      print('\n');
    }
  }while(removeu != true);
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
    }else if(opcao == '2' && produtos.length > 0){
      print('\x1B[2J\x1B[0;0H');
      imprimir();
    }else if (opcao == '2' && produtos.length < 1){
      print('\x1B[2J\x1B[0;0H');
      print('Nada para listar !');
      print('\n');
    }else if(opcao == '3' && produtos.length > 0){
      print('\x1B[2J\x1B[0;0H');
      remover();
    }else if (opcao == '4'){
      print('\x1B[2J\x1B[0;0H'); // limpa tela
      print('********** Programa finalizado **********');
    }else{
      print('\x1B[2J\x1B[0;0H');
      print('Comando Invalido !');
    }
  }while (opcao != '4');
}