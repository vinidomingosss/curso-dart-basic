import 'package:estudo/src/calculo_idade.dart';

main(List<String> arguments) {
  if(arguments[0] == 'calculo-idade'){
    calculoIdade();
  }else{
    print('Esse programa nao existe');
  }
}
