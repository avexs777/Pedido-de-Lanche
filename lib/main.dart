 
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

bool ligado = false;

bool aceito = false;

double valor = 50;

String opcao = "A";

int preco = 0;


void clicarIcone(){

  print("Clicou no coracao");
}


void alterarSwitch(bool novovalor){

setState(() {
  
 ligado = novovalor;

 print(novovalor);

});
}

void alterarCheckbox(bool novoValor){

setState(() {
  
 aceito = novoValor;

 print(novoValor);
});
}

void alterarSlider(double novoValor){

setState(() {
 valor = novoValor;
 print(novoValor);
});
}

void alterarOpcao(String novaOpcao){
 setState(() {
   novaOpcao = novaOpcao;
  print(novaOpcao);
 });
}



  @override
    Widget build (BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            appBar: AppBar(
              title: Text("Pedido de Lanche"),

            ),
            body: Padding(
              padding: EdgeInsets.all(20),


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Favoritar Item"),
              IconButton(
                icon: Icon(Icons.favorite),
              onPressed: clicarIcone,
              ),

              SizedBox(height: 20,),

              Switch(
                value: ligado,
                 onChanged: (valor){
                alterarSwitch(valor);
              },
              ),

                SizedBox(height: 20,),

              Checkbox(
                
                value: aceito,
               onChanged:  (valor){
                alterarCheckbox(valor!);
                
                },
                ),

                SizedBox(height: 20,),

                Slider(
                 min:1,
                 max:10, 
                 value: valor,
                
                
                
               onChanged: (novoValor){
                alterarSlider(novoValor);
                },
                ),

                SizedBox(height: 20,),


                SegmentedButton <String>(
                  segments:[
                     ButtonSegment(value:"A", label: Text("Opcao A, (R10)")),
                     ButtonSegment(value:"B", label: Text("Opcao B, (R15)")),
                     ButtonSegment(value:"C", label: Text("Opcao C, (R20)")),
                  ],
                 selected: {opcao},
                onSelectionChanged: (novaSelecao){
                  alterarOpcao(novaSelecao.first);
                }
                )
                
              ],
            ),
        ),
        ),
      );
    }



 }