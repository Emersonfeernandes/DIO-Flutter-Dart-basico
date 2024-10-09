import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calcular IMC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _altura = TextEditingController();
  final TextEditingController _peso = TextEditingController();
  
  double _resultado = 0.0;

  void _showValues() {
    setState(() {
      try{
      double _alturaDouble = double.parse(_altura.text);
      double _pesoDouble = double.parse(_peso.text);
      _resultado = _pesoDouble / (_alturaDouble * _alturaDouble);
      } catch(e) {
        _resultado = 10000.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                width: 300,
                // CAMPO
                child: TextField(
                  controller: _altura,
                  decoration: InputDecoration(
                    labelText: 'Altura',
                  ),
                ),
            ),
            SizedBox(height: 16),
            SizedBox(
                width: 300,
                child: TextField(
                  controller: _peso,
                  decoration: InputDecoration(
                    labelText: 'Peso',
                  ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showValues,
              child: Text('Resultado'),
            ),
            SizedBox(height: 20),
            Text(
                tableResult(_resultado),
                style: TextStyle(fontSize: 16),
              ),
          ],
        ),
      ), 
    );
  }
}

String tableResult(double result){
  if (result == 10000.0){
    return "Número inválido! Digite Números com pontos: (exemplo - altura: 1.75, peso: 65.5)";
  }
  else if (result >= 0.1 && result <= 16.9){
    return "Muito abaixo do peso";
  } else if (result >= 17.0 && result <= 18.4){
    return "Abaixo do peso";
  } else if (result >= 18.5 && result <= 24.9){
    return "Peso normal";
  } else if (result >= 25.0 && result <= 29.9){
    return "Acima do peso";
  } else if (result >= 30.0 && result <= 34.9){
    return "Obesidade grau I";
  } else if (result >= 35.0 && result <= 40.0){
    return "Obesidade grau II";
  } else if (result > 40.0){
    return "Obesidade grau III";
  } else{
    return "Digite Números com pontos: (exemplo - altura: 1.75, peso: 65.5)";
  }
}
