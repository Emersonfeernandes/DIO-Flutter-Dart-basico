import 'package:imc/imc.dart' as imc;
import 'package:imc/lerInformaçoes.dart' as input;
import 'package:imc/pessoa.dart' as pessoa;

void main(List<String> arguments) {
  try{
    String nome = input.returnInput("Qual é o seu nome?");
    double altura = double.parse(input.returnInput("Qual é a sua altura?"));
    double peso = double.parse(input.returnInput("Qual é o seu peso?"));

    var p = pessoa.Pessoa(nome, altura, peso);

    print(imc.resultIMC(p.getName(), p.getAltura(), p.getPeso()));
  } catch(e){
    print("Número inválido! Digite Números com pontos: (exemplo - altura: 1.75, peso: 65.5)");
  }
}
