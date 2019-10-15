import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main(){

  bool cond = true;

  while (cond) {
    print('Digite um comando');
    String comando = stdin.readLineSync();
    if(comando == 'sair'){
      print('Programa finalizado');
      cond = false;
    }else if(comando == 'cadastro'){
      print('\x1B[2J\x1B[0;0H');
      cadastrar();
    }else if(comando == 'listar'){
      print(cadastros);
    }else{
      print('Comando não existente');
    }
  }  
}

cadastrar(){
  Map<String, dynamic> cadastro = {};

  print('Digite seu nome: ');
  cadastro['nome'] = stdin.readLineSync();

  print('Digite sua idade: ');
  cadastro['idade'] = int.parse(stdin.readLineSync());

  print('Digite sua cidade: ');
  cadastro['cidade'] = stdin.readLineSync();

  print('Digite seu estado: ');
  cadastro['estado'] = stdin.readLineSync();

  cadastros.add(cadastro);
}