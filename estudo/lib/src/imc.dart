import 'dart:io';

calculoImc(){
  print("Digite seu peso: ");
  String textPeso = stdin.readLineSync();
  double peso = double.parse(textPeso);

  print("Digite sua altura: ");
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);

  double imc = calcImcExpr(peso, altura);

  imprimirResultado(imc);
}

//funcao que recebe o peso e altura e retorna o imc
double calcImcExpr(double peso,altura){
  return peso / (altura*altura);
}

//imprimi resultado baseado no imc passado por parametro
imprimirResultado(double imc){
  if (imc < 18.5){
      print("Abaixo do peso!");
    }else if(imc > 18.5 && imc < 24.9){
      print("Peso normal!");
    }else if(imc > 25 && imc < 29.9){
      print("Sobrepeso!");
    }else if(imc > 30 && imc < 34.9){
      print("Obesidade grau 1!");
    }else if(imc > 35 && imc < 39.9){
      print("Obesidade grau 2!");
    }else{
      print("Obesidade grau 3!");
    }
}