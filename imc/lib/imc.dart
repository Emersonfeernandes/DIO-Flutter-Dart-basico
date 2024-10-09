String tableResult(String nome, double result){
  if (result >= 0.1 && result <= 16.9){
    return "$nome está muito abaixo do peso";
  } else if (result >= 17.0 && result <= 18.4){
    return "$nome está abaixo do peso";
  } else if (result >= 18.5 && result <= 24.9){
    return "$nome está com o peso normal";
  } else if (result >= 25.0 && result <= 29.9){
    return "$nome está acima do peso";
  } else if (result >= 30.0 && result <= 34.9){
    return "$nome está com obesidade grau I";
  } else if (result >= 35.0 && result <= 40.0){
    return "$nome está com obesidade grau II";
  } else if (result > 40.0){
    return "$nome está com obesidade grau III";
  } else{
    return "Número inválido! Digite altura e peso reais";
  }
}


String resultIMC(String nome, double altura, double peso){
  double result = peso / (altura * altura);
  return tableResult(nome, result);
}
